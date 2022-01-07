; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_ppp.c_isdn_ppp_unregister_compressor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_ppp.c_isdn_ppp_unregister_compressor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.isdn_ppp_compressor = type { %struct.TYPE_4__*, %struct.TYPE_3__* }

@ipc_head = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isdn_ppp_unregister_compressor(%struct.isdn_ppp_compressor* %0) #0 {
  %2 = alloca %struct.isdn_ppp_compressor*, align 8
  store %struct.isdn_ppp_compressor* %0, %struct.isdn_ppp_compressor** %2, align 8
  %3 = load %struct.isdn_ppp_compressor*, %struct.isdn_ppp_compressor** %2, align 8
  %4 = getelementptr inbounds %struct.isdn_ppp_compressor, %struct.isdn_ppp_compressor* %3, i32 0, i32 1
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = icmp ne %struct.TYPE_3__* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.isdn_ppp_compressor*, %struct.isdn_ppp_compressor** %2, align 8
  %9 = getelementptr inbounds %struct.isdn_ppp_compressor, %struct.isdn_ppp_compressor* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = load %struct.isdn_ppp_compressor*, %struct.isdn_ppp_compressor** %2, align 8
  %12 = getelementptr inbounds %struct.isdn_ppp_compressor, %struct.isdn_ppp_compressor* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %14, align 8
  br label %19

15:                                               ; preds = %1
  %16 = load %struct.isdn_ppp_compressor*, %struct.isdn_ppp_compressor** %2, align 8
  %17 = getelementptr inbounds %struct.isdn_ppp_compressor, %struct.isdn_ppp_compressor* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** @ipc_head, align 8
  br label %19

19:                                               ; preds = %15, %7
  %20 = load %struct.isdn_ppp_compressor*, %struct.isdn_ppp_compressor** %2, align 8
  %21 = getelementptr inbounds %struct.isdn_ppp_compressor, %struct.isdn_ppp_compressor* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.isdn_ppp_compressor*, %struct.isdn_ppp_compressor** %2, align 8
  %26 = getelementptr inbounds %struct.isdn_ppp_compressor, %struct.isdn_ppp_compressor* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load %struct.isdn_ppp_compressor*, %struct.isdn_ppp_compressor** %2, align 8
  %29 = getelementptr inbounds %struct.isdn_ppp_compressor, %struct.isdn_ppp_compressor* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** %31, align 8
  br label %32

32:                                               ; preds = %24, %19
  %33 = load %struct.isdn_ppp_compressor*, %struct.isdn_ppp_compressor** %2, align 8
  %34 = getelementptr inbounds %struct.isdn_ppp_compressor, %struct.isdn_ppp_compressor* %33, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %34, align 8
  %35 = load %struct.isdn_ppp_compressor*, %struct.isdn_ppp_compressor** %2, align 8
  %36 = getelementptr inbounds %struct.isdn_ppp_compressor, %struct.isdn_ppp_compressor* %35, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %36, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
