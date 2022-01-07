; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_farsync.c_fst_get_iface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_farsync.c_fst_get_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.fst_card_info = type { i32 }
%struct.fst_port_info = type { i32, i32 }
%struct.ifreq = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i32 }

@IF_IFACE_E1 = common dso_local global i32 0, align 4
@IF_IFACE_T1 = common dso_local global i32 0, align 4
@IF_IFACE_V35 = common dso_local global i32 0, align 4
@IF_IFACE_V24 = common dso_local global i32 0, align 4
@IF_IFACE_X21D = common dso_local global i32 0, align 4
@IF_IFACE_X21 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@portConfig = common dso_local global %struct.TYPE_9__* null, align 8
@INTCLK = common dso_local global i64 0, align 8
@CLOCK_INT = common dso_local global i32 0, align 4
@CLOCK_EXT = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fst_card_info*, %struct.fst_port_info*, %struct.ifreq*)* @fst_get_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fst_get_iface(%struct.fst_card_info* %0, %struct.fst_port_info* %1, %struct.ifreq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fst_card_info*, align 8
  %6 = alloca %struct.fst_port_info*, align 8
  %7 = alloca %struct.ifreq*, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca i32, align 4
  store %struct.fst_card_info* %0, %struct.fst_card_info** %5, align 8
  store %struct.fst_port_info* %1, %struct.fst_port_info** %6, align 8
  store %struct.ifreq* %2, %struct.ifreq** %7, align 8
  %10 = load %struct.fst_port_info*, %struct.fst_port_info** %6, align 8
  %11 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %39 [
    i32 133, label %13
    i32 132, label %18
    i32 130, label %23
    i32 131, label %28
    i32 128, label %33
    i32 129, label %38
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @IF_IFACE_E1, align 4
  %15 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %16 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  store i32 %14, i32* %17, align 4
  br label %44

18:                                               ; preds = %3
  %19 = load i32, i32* @IF_IFACE_T1, align 4
  %20 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %21 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 4
  br label %44

23:                                               ; preds = %3
  %24 = load i32, i32* @IF_IFACE_V35, align 4
  %25 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %26 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 4
  br label %44

28:                                               ; preds = %3
  %29 = load i32, i32* @IF_IFACE_V24, align 4
  %30 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %31 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  store i32 %29, i32* %32, align 4
  br label %44

33:                                               ; preds = %3
  %34 = load i32, i32* @IF_IFACE_X21D, align 4
  %35 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %36 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 4
  br label %44

38:                                               ; preds = %3
  br label %39

39:                                               ; preds = %3, %38
  %40 = load i32, i32* @IF_IFACE_X21, align 4
  %41 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %42 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 4
  br label %44

44:                                               ; preds = %39, %33, %28, %23, %18, %13
  %45 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %46 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %106

51:                                               ; preds = %44
  %52 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %53 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp ult i64 %56, 16
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %106

61:                                               ; preds = %51
  %62 = load %struct.fst_port_info*, %struct.fst_port_info** %6, align 8
  %63 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %9, align 4
  %65 = load %struct.fst_card_info*, %struct.fst_card_info** %5, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** @portConfig, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @FST_RDL(%struct.fst_card_info* %65, i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  store i32 %72, i32* %73, align 4
  %74 = load %struct.fst_card_info*, %struct.fst_card_info** %5, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** @portConfig, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @FST_RDB(%struct.fst_card_info* %74, i32 %80)
  %82 = load i64, i64* @INTCLK, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %61
  %85 = load i32, i32* @CLOCK_INT, align 4
  br label %88

86:                                               ; preds = %61
  %87 = load i32, i32* @CLOCK_EXT, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i32 %89, i32* %90, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i64 0, i64* %91, align 8
  %92 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %93 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @copy_to_user(i32 %96, %struct.TYPE_8__* %8, i32 16)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %88
  %100 = load i32, i32* @EFAULT, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %106

102:                                              ; preds = %88
  %103 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %104 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  store i32 16, i32* %105, align 4
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %102, %99, %58, %50
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @FST_RDL(%struct.fst_card_info*, i32) #1

declare dso_local i64 @FST_RDB(%struct.fst_card_info*, i32) #1

declare dso_local i64 @copy_to_user(i32, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
