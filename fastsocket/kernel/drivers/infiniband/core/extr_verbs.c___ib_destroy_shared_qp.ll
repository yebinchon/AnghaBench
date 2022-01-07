; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c___ib_destroy_shared_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c___ib_destroy_shared_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32, i32, %struct.ib_xrcd*, %struct.ib_qp* }
%struct.ib_xrcd = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*)* @__ib_destroy_shared_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ib_destroy_shared_qp(%struct.ib_qp* %0) #0 {
  %2 = alloca %struct.ib_qp*, align 8
  %3 = alloca %struct.ib_xrcd*, align 8
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %2, align 8
  %6 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %7 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %6, i32 0, i32 3
  %8 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  store %struct.ib_qp* %8, %struct.ib_qp** %4, align 8
  %9 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %10 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %9, i32 0, i32 2
  %11 = load %struct.ib_xrcd*, %struct.ib_xrcd** %10, align 8
  store %struct.ib_xrcd* %11, %struct.ib_xrcd** %3, align 8
  %12 = load %struct.ib_xrcd*, %struct.ib_xrcd** %3, align 8
  %13 = getelementptr inbounds %struct.ib_xrcd, %struct.ib_xrcd* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.ib_qp*, %struct.ib_qp** %2, align 8
  %16 = call i32 @ib_close_qp(%struct.ib_qp* %15)
  %17 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %18 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %17, i32 0, i32 1
  %19 = call i64 @atomic_read(i32* %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %23 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %22, i32 0, i32 0
  %24 = call i32 @list_del(i32* %23)
  br label %26

25:                                               ; preds = %1
  store %struct.ib_qp* null, %struct.ib_qp** %4, align 8
  br label %26

26:                                               ; preds = %25, %21
  %27 = load %struct.ib_xrcd*, %struct.ib_xrcd** %3, align 8
  %28 = getelementptr inbounds %struct.ib_xrcd, %struct.ib_xrcd* %27, i32 0, i32 1
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %31 = icmp ne %struct.ib_qp* %30, null
  br i1 %31, label %32, label %46

32:                                               ; preds = %26
  %33 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %34 = call i32 @ib_destroy_qp(%struct.ib_qp* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load %struct.ib_xrcd*, %struct.ib_xrcd** %3, align 8
  %39 = getelementptr inbounds %struct.ib_xrcd, %struct.ib_xrcd* %38, i32 0, i32 0
  %40 = call i32 @atomic_dec(i32* %39)
  br label %45

41:                                               ; preds = %32
  %42 = load %struct.ib_xrcd*, %struct.ib_xrcd** %3, align 8
  %43 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %44 = call i32 @__ib_insert_xrcd_qp(%struct.ib_xrcd* %42, %struct.ib_qp* %43)
  br label %45

45:                                               ; preds = %41, %37
  br label %46

46:                                               ; preds = %45, %26
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ib_close_qp(%struct.ib_qp*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ib_destroy_qp(%struct.ib_qp*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @__ib_insert_xrcd_qp(%struct.ib_xrcd*, %struct.ib_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
