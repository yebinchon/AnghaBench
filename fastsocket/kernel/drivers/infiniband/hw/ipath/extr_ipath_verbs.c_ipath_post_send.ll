; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.c_ipath_post_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.c_ipath_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_send_wr = type { %struct.ib_send_wr* }
%struct.ipath_qp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_send_wr*, %struct.ib_send_wr**)* @ipath_post_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipath_post_send(%struct.ib_qp* %0, %struct.ib_send_wr* %1, %struct.ib_send_wr** %2) #0 {
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %struct.ib_send_wr*, align 8
  %6 = alloca %struct.ib_send_wr**, align 8
  %7 = alloca %struct.ipath_qp*, align 8
  %8 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %4, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %5, align 8
  store %struct.ib_send_wr** %2, %struct.ib_send_wr*** %6, align 8
  %9 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %10 = call %struct.ipath_qp* @to_iqp(%struct.ib_qp* %9)
  store %struct.ipath_qp* %10, %struct.ipath_qp** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %24, %3
  %12 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %13 = icmp ne %struct.ib_send_wr* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %11
  %15 = load %struct.ipath_qp*, %struct.ipath_qp** %7, align 8
  %16 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %17 = call i32 @ipath_post_one_send(%struct.ipath_qp* %15, %struct.ib_send_wr* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %22 = load %struct.ib_send_wr**, %struct.ib_send_wr*** %6, align 8
  store %struct.ib_send_wr* %21, %struct.ib_send_wr** %22, align 8
  br label %32

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %26 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %25, i32 0, i32 0
  %27 = load %struct.ib_send_wr*, %struct.ib_send_wr** %26, align 8
  store %struct.ib_send_wr* %27, %struct.ib_send_wr** %5, align 8
  br label %11

28:                                               ; preds = %11
  %29 = load %struct.ipath_qp*, %struct.ipath_qp** %7, align 8
  %30 = ptrtoint %struct.ipath_qp* %29 to i64
  %31 = call i32 @ipath_do_send(i64 %30)
  br label %32

32:                                               ; preds = %28, %20
  %33 = load i32, i32* %8, align 4
  ret i32 %33
}

declare dso_local %struct.ipath_qp* @to_iqp(%struct.ib_qp*) #1

declare dso_local i32 @ipath_post_one_send(%struct.ipath_qp*, %struct.ib_send_wr*) #1

declare dso_local i32 @ipath_do_send(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
