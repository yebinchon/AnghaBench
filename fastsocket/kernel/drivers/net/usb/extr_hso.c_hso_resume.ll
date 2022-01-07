; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.usb_interface* }
%struct.usb_interface = type { i32 }
%struct.TYPE_10__ = type { %struct.usb_interface* }
%struct.hso_net = type { i32, i32*, i32 }
%struct.TYPE_11__ = type { i64 }

@HSO_SERIAL_TTY_MINORS = common dso_local global i32 0, align 4
@serial_table = common dso_local global %struct.TYPE_9__** null, align 8
@GFP_NOIO = common dso_local global i32 0, align 4
@HSO_MAX_NET_DEVICES = common dso_local global i32 0, align 4
@network_table = common dso_local global %struct.TYPE_10__** null, align 8
@IFF_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Transmitting lingering data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @hso_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hso_resume(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.hso_net*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %58, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @HSO_SERIAL_TTY_MINORS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %61

10:                                               ; preds = %6
  %11 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @serial_table, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %11, i64 %13
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = icmp ne %struct.TYPE_9__* %15, null
  br i1 %16, label %17, label %57

17:                                               ; preds = %10
  %18 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @serial_table, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %18, i64 %20
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.usb_interface*, %struct.usb_interface** %23, align 8
  %25 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %26 = icmp eq %struct.usb_interface* %24, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %17
  %28 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @serial_table, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %28, i64 %30
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = call %struct.TYPE_11__* @dev2ser(%struct.TYPE_9__* %32)
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %27
  %38 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @serial_table, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %38, i64 %40
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = load i32, i32* @GFP_NOIO, align 4
  %44 = call i32 @hso_start_serial_device(%struct.TYPE_9__* %42, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @serial_table, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %45, i64 %47
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = call %struct.TYPE_11__* @dev2ser(%struct.TYPE_9__* %49)
  %51 = call i32 @hso_kick_transmit(%struct.TYPE_11__* %50)
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %37
  br label %131

55:                                               ; preds = %37
  br label %56

56:                                               ; preds = %55, %27
  br label %57

57:                                               ; preds = %56, %17, %10
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %6

61:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %127, %61
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @HSO_MAX_NET_DEVICES, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %130

66:                                               ; preds = %62
  %67 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @network_table, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %67, i64 %69
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = icmp ne %struct.TYPE_10__* %71, null
  br i1 %72, label %73, label %126

73:                                               ; preds = %66
  %74 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @network_table, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %74, i64 %76
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load %struct.usb_interface*, %struct.usb_interface** %79, align 8
  %81 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %82 = icmp eq %struct.usb_interface* %80, %81
  br i1 %82, label %83, label %126

83:                                               ; preds = %73
  %84 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @network_table, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %84, i64 %86
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = call %struct.hso_net* @dev2net(%struct.TYPE_10__* %88)
  store %struct.hso_net* %89, %struct.hso_net** %5, align 8
  %90 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %91 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @IFF_UP, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %125

96:                                               ; preds = %83
  %97 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %98 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %114

101:                                              ; preds = %96
  %102 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %103 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %102, i32 0, i32 0
  %104 = call i32 @dev_dbg(i32* %103, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %105 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %106 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %109 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @hso_net_start_xmit(i32* %107, i32 %110)
  %112 = load %struct.hso_net*, %struct.hso_net** %5, align 8
  %113 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %112, i32 0, i32 1
  store i32* null, i32** %113, align 8
  br label %114

114:                                              ; preds = %101, %96
  %115 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @network_table, align 8
  %116 = load i32, i32* %3, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %115, i64 %117
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = call i32 @hso_start_net_device(%struct.TYPE_10__* %119)
  store i32 %120, i32* %4, align 4
  %121 = load i32, i32* %4, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %114
  br label %131

124:                                              ; preds = %114
  br label %125

125:                                              ; preds = %124, %83
  br label %126

126:                                              ; preds = %125, %73, %66
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %3, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %3, align 4
  br label %62

130:                                              ; preds = %62
  br label %131

131:                                              ; preds = %130, %123, %54
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local %struct.TYPE_11__* @dev2ser(%struct.TYPE_9__*) #1

declare dso_local i32 @hso_start_serial_device(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @hso_kick_transmit(%struct.TYPE_11__*) #1

declare dso_local %struct.hso_net* @dev2net(%struct.TYPE_10__*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @hso_net_start_xmit(i32*, i32) #1

declare dso_local i32 @hso_start_net_device(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
