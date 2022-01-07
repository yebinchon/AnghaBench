; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_send_cmd_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_send_cmd_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i64, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.il_host_cmd = type { i32, i32, i64, i32 }

@CMD_ASYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Attempting to send sync command %s\0A\00", align 1
@S_HCMD_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Setting HCMD_ACTIVE for command %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Error sending %s: enqueue_hcmd failed: %d\0A\00", align 1
@HOST_COMPLETE_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Error sending %s: time out after %dms.\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Clearing HCMD_ACTIVE for command %s\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@S_RFKILL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Command %s aborted: RF KILL Switch\0A\00", align 1
@ECANCELED = common dso_local global i32 0, align 4
@S_FW_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Command %s failed: FW Error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@CMD_WANT_SKB = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"Error: Response NULL in '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il_send_cmd_sync(%struct.il_priv* %0, %struct.il_host_cmd* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_host_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store %struct.il_host_cmd* %1, %struct.il_host_cmd** %4, align 8
  %7 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %8 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %7, i32 0, i32 4
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load %struct.il_host_cmd*, %struct.il_host_cmd** %4, align 8
  %11 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @CMD_ASYNC, align 4
  %14 = and i32 %12, %13
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.il_host_cmd*, %struct.il_host_cmd** %4, align 8
  %17 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.il_host_cmd*, %struct.il_host_cmd** %4, align 8
  %21 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @il_get_cmd_string(i32 %22)
  %24 = call i32 @D_INFO(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @S_HCMD_ACTIVE, align 4
  %26 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %27 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %26, i32 0, i32 2
  %28 = call i32 @set_bit(i32 %25, i32* %27)
  %29 = load %struct.il_host_cmd*, %struct.il_host_cmd** %4, align 8
  %30 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @il_get_cmd_string(i32 %31)
  %33 = call i32 @D_INFO(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %35 = load %struct.il_host_cmd*, %struct.il_host_cmd** %4, align 8
  %36 = call i32 @il_enqueue_hcmd(%struct.il_priv* %34, %struct.il_host_cmd* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %2
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %6, align 4
  %41 = load %struct.il_host_cmd*, %struct.il_host_cmd** %4, align 8
  %42 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @il_get_cmd_string(i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = call i32 (i8*, i32, ...) @IL_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %45)
  br label %177

47:                                               ; preds = %2
  %48 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %49 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @S_HCMD_ACTIVE, align 4
  %52 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %53 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %52, i32 0, i32 2
  %54 = call i64 @test_bit(i32 %51, i32* %53)
  %55 = icmp ne i64 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* @HOST_COMPLETE_TIMEOUT, align 4
  %59 = call i32 @wait_event_timeout(i32 %50, i32 %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %88, label %62

62:                                               ; preds = %47
  %63 = load i32, i32* @S_HCMD_ACTIVE, align 4
  %64 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %65 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %64, i32 0, i32 2
  %66 = call i64 @test_bit(i32 %63, i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %62
  %69 = load %struct.il_host_cmd*, %struct.il_host_cmd** %4, align 8
  %70 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @il_get_cmd_string(i32 %71)
  %73 = load i32, i32* @HOST_COMPLETE_TIMEOUT, align 4
  %74 = call i32 @jiffies_to_msecs(i32 %73)
  %75 = call i32 (i8*, i32, ...) @IL_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %72, i32 %74)
  %76 = load i32, i32* @S_HCMD_ACTIVE, align 4
  %77 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %78 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %77, i32 0, i32 2
  %79 = call i32 @clear_bit(i32 %76, i32* %78)
  %80 = load %struct.il_host_cmd*, %struct.il_host_cmd** %4, align 8
  %81 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @il_get_cmd_string(i32 %82)
  %84 = call i32 @D_INFO(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @ETIMEDOUT, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %137

87:                                               ; preds = %62
  br label %88

88:                                               ; preds = %87, %47
  %89 = load i32, i32* @S_RFKILL, align 4
  %90 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %91 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %90, i32 0, i32 2
  %92 = call i64 @test_bit(i32 %89, i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %88
  %95 = load %struct.il_host_cmd*, %struct.il_host_cmd** %4, align 8
  %96 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @il_get_cmd_string(i32 %97)
  %99 = call i32 (i8*, i32, ...) @IL_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @ECANCELED, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %6, align 4
  br label %163

102:                                              ; preds = %88
  %103 = load i32, i32* @S_FW_ERROR, align 4
  %104 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %105 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %104, i32 0, i32 2
  %106 = call i64 @test_bit(i32 %103, i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %102
  %109 = load %struct.il_host_cmd*, %struct.il_host_cmd** %4, align 8
  %110 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @il_get_cmd_string(i32 %111)
  %113 = call i32 (i8*, i32, ...) @IL_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* @EIO, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %6, align 4
  br label %163

116:                                              ; preds = %102
  %117 = load %struct.il_host_cmd*, %struct.il_host_cmd** %4, align 8
  %118 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @CMD_WANT_SKB, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %116
  %124 = load %struct.il_host_cmd*, %struct.il_host_cmd** %4, align 8
  %125 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %136, label %128

128:                                              ; preds = %123
  %129 = load %struct.il_host_cmd*, %struct.il_host_cmd** %4, align 8
  %130 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @il_get_cmd_string(i32 %131)
  %133 = call i32 (i8*, i32, ...) @IL_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* @EIO, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %6, align 4
  br label %137

136:                                              ; preds = %123, %116
  store i32 0, i32* %6, align 4
  br label %177

137:                                              ; preds = %128, %68
  %138 = load %struct.il_host_cmd*, %struct.il_host_cmd** %4, align 8
  %139 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @CMD_WANT_SKB, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %162

144:                                              ; preds = %137
  %145 = load i32, i32* @CMD_WANT_SKB, align 4
  %146 = xor i32 %145, -1
  %147 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %148 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %147, i32 0, i32 1
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %151 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %154, align 8
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, %146
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %144, %137
  br label %163

163:                                              ; preds = %162, %108, %94
  %164 = load %struct.il_host_cmd*, %struct.il_host_cmd** %4, align 8
  %165 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %163
  %169 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %170 = load %struct.il_host_cmd*, %struct.il_host_cmd** %4, align 8
  %171 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @il_free_pages(%struct.il_priv* %169, i64 %172)
  %174 = load %struct.il_host_cmd*, %struct.il_host_cmd** %4, align 8
  %175 = getelementptr inbounds %struct.il_host_cmd, %struct.il_host_cmd* %174, i32 0, i32 2
  store i64 0, i64* %175, align 8
  br label %176

176:                                              ; preds = %168, %163
  br label %177

177:                                              ; preds = %176, %136, %39
  %178 = load i32, i32* %6, align 4
  ret i32 %178
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @D_INFO(i8*, i32) #1

declare dso_local i32 @il_get_cmd_string(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @il_enqueue_hcmd(%struct.il_priv*, %struct.il_host_cmd*) #1

declare dso_local i32 @IL_ERR(i8*, i32, ...) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @il_free_pages(%struct.il_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
