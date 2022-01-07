; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_d.c_st5481_setup_d.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_st5481_d.c_st5481_setup_d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st5481_adapter = type { %struct.TYPE_8__, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, %struct.st5481_adapter*, i32, i32* }
%struct.TYPE_10__ = type { i32, i32, %struct.st5481_adapter*, i32, i32* }
%struct.TYPE_9__ = type { i32, i32*, %struct.st5481_adapter*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MAX_DFRAME_LEN_L1 = common dso_local global i32 0, align 4
@NUM_ISO_PACKETS_D = common dso_local global i32 0, align 4
@SIZE_ISO_PACKETS_D_IN = common dso_local global i32 0, align 4
@EP_D_IN = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@IN_D_COUNTER = common dso_local global i32 0, align 4
@l1fsm = common dso_local global i32 0, align 4
@ST_L1_F3 = common dso_local global i32 0, align 4
@st5481_debug = common dso_local global i32 0, align 4
@l1m_debug = common dso_local global i32 0, align 4
@dout_fsm = common dso_local global i32 0, align 4
@ST_DOUT_NONE = common dso_local global i32 0, align 4
@dout_debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st5481_setup_d(%struct.st5481_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.st5481_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.st5481_adapter* %0, %struct.st5481_adapter** %3, align 8
  %5 = call i32 @DBG(i32 2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %7 = call i32 @st5481_setup_d_out(%struct.st5481_adapter* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %104

11:                                               ; preds = %1
  %12 = load i32, i32* @MAX_DFRAME_LEN_L1, align 4
  %13 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 6
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @NUM_ISO_PACKETS_D, align 4
  %17 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 5
  store i32 %16, i32* %19, align 8
  %20 = load i32, i32* @SIZE_ISO_PACKETS_D_IN, align 4
  %21 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 4
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @EP_D_IN, align 4
  %25 = load i32, i32* @USB_DIR_IN, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load i32, i32* @IN_D_COUNTER, align 4
  %31 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 8
  %34 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %35 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  store %struct.st5481_adapter* %34, %struct.st5481_adapter** %37, align 8
  %38 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  store i32* %40, i32** %43, align 8
  %44 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %44, i32 0, i32 3
  %46 = call i32 @st5481_setup_in(%struct.TYPE_9__* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %11
  br label %101

50:                                               ; preds = %11
  %51 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 4
  store i32* @l1fsm, i32** %53, align 8
  %54 = load i32, i32* @ST_L1_F3, align 4
  %55 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 3
  store i32 %54, i32* %57, align 8
  %58 = load i32, i32* @st5481_debug, align 4
  %59 = and i32 %58, 256
  %60 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %61 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %64 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  store %struct.st5481_adapter* %63, %struct.st5481_adapter** %66, align 8
  %67 = load i32, i32* @l1m_debug, align 4
  %68 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %69 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 4
  %71 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %72 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %71, i32 0, i32 2
  %73 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %74 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %73, i32 0, i32 1
  %75 = call i32 @FsmInitTimer(%struct.TYPE_10__* %72, i32* %74)
  %76 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %77 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 4
  store i32* @dout_fsm, i32** %79, align 8
  %80 = load i32, i32* @ST_DOUT_NONE, align 4
  %81 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %82 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 3
  store i32 %80, i32* %84, align 8
  %85 = load i32, i32* @st5481_debug, align 4
  %86 = and i32 %85, 256
  %87 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %88 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  store i32 %86, i32* %90, align 8
  %91 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %92 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %93 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  store %struct.st5481_adapter* %91, %struct.st5481_adapter** %95, align 8
  %96 = load i32, i32* @dout_debug, align 4
  %97 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %98 = getelementptr inbounds %struct.st5481_adapter, %struct.st5481_adapter* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  store i32 %96, i32* %100, align 4
  store i32 0, i32* %2, align 4
  br label %106

101:                                              ; preds = %49
  %102 = load %struct.st5481_adapter*, %struct.st5481_adapter** %3, align 8
  %103 = call i32 @st5481_release_d_out(%struct.st5481_adapter* %102)
  br label %104

104:                                              ; preds = %101, %10
  %105 = load i32, i32* %4, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %50
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @DBG(i32, i8*) #1

declare dso_local i32 @st5481_setup_d_out(%struct.st5481_adapter*) #1

declare dso_local i32 @st5481_setup_in(%struct.TYPE_9__*) #1

declare dso_local i32 @FsmInitTimer(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @st5481_release_d_out(%struct.st5481_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
