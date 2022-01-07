; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_lp486e.c_init_i596.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_lp486e.c_init_i596.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.i596_private = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i64, %struct.TYPE_5__, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.i596_cmd = type opaque

@init_setup = common dso_local global i32 0, align 4
@CmdConfigure = common dso_local global i32 0, align 4
@CmdIASetup = common dso_local global i32 0, align 4
@CmdTDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"i82596 init\00", align 1
@RX_START = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Receive Unit start\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @init_i596 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_i596(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.i596_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call i64 @i596_scp_setup(%struct.net_device* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %86

9:                                                ; preds = %1
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.i596_private* @netdev_priv(%struct.net_device* %10)
  store %struct.i596_private* %11, %struct.i596_private** %4, align 8
  %12 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %13 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %16 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = load i32, i32* @init_setup, align 4
  %20 = call i32 @memcpy(i8* %18, i32 %19, i32 14)
  %21 = load i32, i32* @CmdConfigure, align 4
  %22 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %23 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %27 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %26, i32 0, i32 4
  %28 = bitcast %struct.TYPE_5__* %27 to i8*
  %29 = call i32 @i596_add_cmd(%struct.net_device* %25, i8* %28)
  %30 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %31 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @memcpy(i8* %33, i32 %36, i32 6)
  %38 = load i32, i32* @CmdIASetup, align 4
  %39 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %40 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %44 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %43, i32 0, i32 2
  %45 = bitcast %struct.TYPE_6__* %44 to %struct.i596_cmd*
  %46 = bitcast %struct.i596_cmd* %45 to i8*
  %47 = call i32 @i596_add_cmd(%struct.net_device* %42, i8* %46)
  %48 = load i32, i32* @CmdTDR, align 4
  %49 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %50 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %54 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %53, i32 0, i32 1
  %55 = bitcast %struct.TYPE_7__* %54 to %struct.i596_cmd*
  %56 = bitcast %struct.i596_cmd* %55 to i8*
  %57 = call i32 @i596_add_cmd(%struct.net_device* %52, i8* %56)
  %58 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %59 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %9
  %64 = load %struct.net_device*, %struct.net_device** %3, align 8
  %65 = call i64 @i596_timeout(%struct.net_device* %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 200)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 1, i32* %2, align 4
  br label %86

68:                                               ; preds = %63, %9
  %69 = load i64, i64* @RX_START, align 8
  %70 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %71 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  store i64 %69, i64* %72, align 8
  %73 = call i32 (...) @CA()
  %74 = call i32 (...) @barrier()
  %75 = load %struct.i596_private*, %struct.i596_private** %4, align 8
  %76 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %68
  %81 = load %struct.net_device*, %struct.net_device** %3, align 8
  %82 = call i64 @i596_timeout(%struct.net_device* %81, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 100)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 1, i32* %2, align 4
  br label %86

85:                                               ; preds = %80, %68
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %84, %67, %8
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i64 @i596_scp_setup(%struct.net_device*) #1

declare dso_local %struct.i596_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @i596_add_cmd(%struct.net_device*, i8*) #1

declare dso_local i64 @i596_timeout(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @CA(...) #1

declare dso_local i32 @barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
