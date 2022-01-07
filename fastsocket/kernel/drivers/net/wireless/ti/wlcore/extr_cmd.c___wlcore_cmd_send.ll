; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c___wlcore_cmd_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c___wlcore_cmd_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.wl1271*, i32, i8*, i64)* }
%struct.wl1271_cmd_header = type { i64, i32 }

@WLCORE_STATE_RESTARTING = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@WL1271_FLAG_IN_ELP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@WL1271_COMMAND_TIMEOUT = common dso_local global i32 0, align 4
@REG_INTERRUPT_NO_CLEAR = common dso_local global i32 0, align 4
@WL1271_ACX_INTR_CMD_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"command complete timeout\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@WL1271_CMD_FAST_POLL_COUNT = common dso_local global i64 0, align 8
@REG_INTERRUPT_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, i64, i8*, i64, i64)* @__wlcore_cmd_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__wlcore_cmd_send(%struct.wl1271* %0, i64 %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl1271*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.wl1271_cmd_header*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %17, align 8
  %18 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %19 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @WLCORE_STATE_RESTARTING, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @unlikely(i32 %23)
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %156

30:                                               ; preds = %5
  %31 = load i8*, i8** %9, align 8
  %32 = bitcast i8* %31 to %struct.wl1271_cmd_header*
  store %struct.wl1271_cmd_header* %32, %struct.wl1271_cmd_header** %12, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @cpu_to_le16(i64 %33)
  %35 = load %struct.wl1271_cmd_header*, %struct.wl1271_cmd_header** %12, align 8
  %36 = getelementptr inbounds %struct.wl1271_cmd_header, %struct.wl1271_cmd_header* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.wl1271_cmd_header*, %struct.wl1271_cmd_header** %12, align 8
  %38 = getelementptr inbounds %struct.wl1271_cmd_header, %struct.wl1271_cmd_header* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load i64, i64* %10, align 8
  %40 = urem i64 %39, 4
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i64 @WARN_ON(i32 %42)
  %44 = load i32, i32* @WL1271_FLAG_IN_ELP, align 4
  %45 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %46 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %45, i32 0, i32 3
  %47 = call i32 @test_bit(i32 %44, i32* %46)
  %48 = call i64 @WARN_ON(i32 %47)
  %49 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %50 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %51 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @wlcore_write(%struct.wl1271* %49, i32 %52, i8* %53, i64 %54, i32 0)
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %30
  %59 = load i32, i32* %15, align 4
  store i32 %59, i32* %6, align 4
  br label %156

60:                                               ; preds = %30
  %61 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %62 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32 (%struct.wl1271*, i32, i8*, i64)*, i32 (%struct.wl1271*, i32, i8*, i64)** %64, align 8
  %66 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %67 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %68 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = load i64, i64* %10, align 8
  %72 = call i32 %65(%struct.wl1271* %66, i32 %69, i8* %70, i64 %71)
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %60
  %76 = load i32, i32* %15, align 4
  store i32 %76, i32* %6, align 4
  br label %156

77:                                               ; preds = %60
  %78 = load i64, i64* @jiffies, align 8
  %79 = load i32, i32* @WL1271_COMMAND_TIMEOUT, align 4
  %80 = call i64 @msecs_to_jiffies(i32 %79)
  %81 = add i64 %78, %80
  store i64 %81, i64* %13, align 8
  %82 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %83 = load i32, i32* @REG_INTERRUPT_NO_CLEAR, align 4
  %84 = call i32 @wlcore_read_reg(%struct.wl1271* %82, i32 %83, i32* %14)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = load i32, i32* %15, align 4
  store i32 %88, i32* %6, align 4
  br label %156

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %123, %89
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* @WL1271_ACX_INTR_CMD_COMPLETE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  br i1 %95, label %96, label %124

96:                                               ; preds = %90
  %97 = load i64, i64* @jiffies, align 8
  %98 = load i64, i64* %13, align 8
  %99 = call i64 @time_after(i64 %97, i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = call i32 @wl1271_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %103 = load i32, i32* @ETIMEDOUT, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %6, align 4
  br label %156

105:                                              ; preds = %96
  %106 = load i64, i64* %17, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %17, align 8
  %108 = load i64, i64* %17, align 8
  %109 = load i64, i64* @WL1271_CMD_FAST_POLL_COUNT, align 8
  %110 = icmp slt i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = call i32 @udelay(i32 10)
  br label %115

113:                                              ; preds = %105
  %114 = call i32 @msleep(i32 1)
  br label %115

115:                                              ; preds = %113, %111
  %116 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %117 = load i32, i32* @REG_INTERRUPT_NO_CLEAR, align 4
  %118 = call i32 @wlcore_read_reg(%struct.wl1271* %116, i32 %117, i32* %14)
  store i32 %118, i32* %15, align 4
  %119 = load i32, i32* %15, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = load i32, i32* %15, align 4
  store i32 %122, i32* %6, align 4
  br label %156

123:                                              ; preds = %115
  br label %90

124:                                              ; preds = %90
  %125 = load i64, i64* %11, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  store i64 16, i64* %11, align 8
  br label %128

128:                                              ; preds = %127, %124
  %129 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %130 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %131 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.wl1271_cmd_header*, %struct.wl1271_cmd_header** %12, align 8
  %134 = load i64, i64* %11, align 8
  %135 = call i32 @wlcore_read(%struct.wl1271* %129, i32 %132, %struct.wl1271_cmd_header* %133, i64 %134, i32 0)
  store i32 %135, i32* %15, align 4
  %136 = load i32, i32* %15, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %128
  %139 = load i32, i32* %15, align 4
  store i32 %139, i32* %6, align 4
  br label %156

140:                                              ; preds = %128
  %141 = load %struct.wl1271_cmd_header*, %struct.wl1271_cmd_header** %12, align 8
  %142 = getelementptr inbounds %struct.wl1271_cmd_header, %struct.wl1271_cmd_header* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = call i64 @le16_to_cpu(i64 %143)
  store i64 %144, i64* %16, align 8
  %145 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %146 = load i32, i32* @REG_INTERRUPT_ACK, align 4
  %147 = load i32, i32* @WL1271_ACX_INTR_CMD_COMPLETE, align 4
  %148 = call i32 @wlcore_write_reg(%struct.wl1271* %145, i32 %146, i32 %147)
  store i32 %148, i32* %15, align 4
  %149 = load i32, i32* %15, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %140
  %152 = load i32, i32* %15, align 4
  store i32 %152, i32* %6, align 4
  br label %156

153:                                              ; preds = %140
  %154 = load i64, i64* %16, align 8
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %6, align 4
  br label %156

156:                                              ; preds = %153, %151, %138, %121, %101, %87, %75, %58, %27
  %157 = load i32, i32* %6, align 4
  ret i32 %157
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @wlcore_write(%struct.wl1271*, i32, i8*, i64, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wlcore_read_reg(%struct.wl1271*, i32, i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @wlcore_read(%struct.wl1271*, i32, %struct.wl1271_cmd_header*, i64, i32) #1

declare dso_local i64 @le16_to_cpu(i64) #1

declare dso_local i32 @wlcore_write_reg(%struct.wl1271*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
