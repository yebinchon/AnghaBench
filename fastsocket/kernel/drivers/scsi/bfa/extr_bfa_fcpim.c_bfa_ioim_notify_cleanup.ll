; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_notify_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_notify_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioim_s = type { %struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_5__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioim_s*)* @bfa_ioim_notify_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioim_notify_cleanup(%struct.bfa_ioim_s* %0) #0 {
  %2 = alloca %struct.bfa_ioim_s*, align 8
  store %struct.bfa_ioim_s* %0, %struct.bfa_ioim_s** %2, align 8
  %3 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %2, align 8
  %4 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %3, i32 0, i32 2
  %5 = call i32 @list_del(i32* %4)
  %6 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %2, align 8
  %7 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %6, i32 0, i32 2
  %8 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %2, align 8
  %9 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %8, i32 0, i32 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = call i32 @list_add_tail(i32* %7, i32* %11)
  %13 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %2, align 8
  %14 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %52, label %19

19:                                               ; preds = %1
  %20 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %2, align 8
  %21 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %20, i32 0, i32 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %19
  %27 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %2, align 8
  %28 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %26
  %34 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %2, align 8
  %35 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %34, i32 0, i32 3
  %36 = call i32 @bfa_cb_dequeue(i32* %35)
  %37 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %2, align 8
  %38 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %37, i32 0, i32 2
  %39 = call i32 @list_del(i32* %38)
  %40 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %2, align 8
  %41 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %40, i32 0, i32 2
  %42 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %2, align 8
  %43 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %42, i32 0, i32 1
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = call i32 @list_add_tail(i32* %41, i32* %45)
  br label %47

47:                                               ; preds = %33, %26, %19
  %48 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %2, align 8
  %49 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %48, i32 0, i32 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = call i32 @bfa_itnim_iodone(%struct.TYPE_8__* %50)
  br label %60

52:                                               ; preds = %1
  %53 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %2, align 8
  %54 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = call i32 @bfa_wc_down(i32* %58)
  br label %60

60:                                               ; preds = %52, %47
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @bfa_cb_dequeue(i32*) #1

declare dso_local i32 @bfa_itnim_iodone(%struct.TYPE_8__*) #1

declare dso_local i32 @bfa_wc_down(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
