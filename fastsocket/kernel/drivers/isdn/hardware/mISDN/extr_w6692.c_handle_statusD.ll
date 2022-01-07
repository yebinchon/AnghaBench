; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_w6692.c_handle_statusD.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_w6692.c_handle_statusD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w6692_hw = type { i32, i32, i32, %struct.dchannel }
%struct.dchannel = type { i32, i32 }

@W_D_EXIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s: D_EXIR %02x\0A\00", align 1
@W_D_EXI_XDUN = common dso_local global i32 0, align 4
@W_D_EXI_XCOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: D-channel underrun/collision\0A\00", align 1
@W_D_EXI_RDOV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"%s: D-channel RDOV\0A\00", align 1
@W_D_CMDR = common dso_local global i32 0, align 4
@W_D_CMDR_RRST = common dso_local global i32 0, align 4
@W_D_EXI_TIN2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"%s: spurious TIN2 interrupt\0A\00", align 1
@W_D_EXI_MOC = common dso_local global i32 0, align 4
@W_MOSR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"%s: spurious MOC interrupt MOSR %02x\0A\00", align 1
@W_D_EXI_ISC = common dso_local global i32 0, align 4
@W_CIR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"%s: ISC CIR %02X\0A\00", align 1
@W_CIR_ICC = common dso_local global i32 0, align 4
@W_CIR_COD_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"%s: ph_state_change %x -> %x\0A\00", align 1
@led = common dso_local global i32 0, align 4
@W_CIR_SCC = common dso_local global i32 0, align 4
@W_SQR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"%s: SCC SQR %02X\0A\00", align 1
@W_D_EXI_WEXP = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"%s: spurious WEXP interrupt!\0A\00", align 1
@W_D_EXI_TEXP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"%s: spurious TEXP interrupt!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w6692_hw*)* @handle_statusD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_statusD(%struct.w6692_hw* %0) #0 {
  %2 = alloca %struct.w6692_hw*, align 8
  %3 = alloca %struct.dchannel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.w6692_hw* %0, %struct.w6692_hw** %2, align 8
  %7 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %8 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %7, i32 0, i32 3
  store %struct.dchannel* %8, %struct.dchannel** %3, align 8
  %9 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %10 = load i32, i32* @W_D_EXIR, align 4
  %11 = call i32 @ReadW6692(%struct.w6692_hw* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %13 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @W_D_EXI_XDUN, align 4
  %19 = load i32, i32* @W_D_EXI_XCOL, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %25 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %29 = call i32 @d_retransmit(%struct.w6692_hw* %28)
  br label %30

30:                                               ; preds = %23, %1
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @W_D_EXI_RDOV, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %37 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %41 = load i32, i32* @W_D_CMDR, align 4
  %42 = load i32, i32* @W_D_CMDR_RRST, align 4
  %43 = call i32 @WriteW6692(%struct.w6692_hw* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %35, %30
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @W_D_EXI_TIN2, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %51 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @W_D_EXI_MOC, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %61 = load i32, i32* @W_MOSR, align 4
  %62 = call i32 @ReadW6692(%struct.w6692_hw* %60, i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %64 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %59, %54
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @W_D_EXI_ISC, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %134

73:                                               ; preds = %68
  %74 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %75 = load i32, i32* @W_CIR, align 4
  %76 = call i32 @ReadW6692(%struct.w6692_hw* %74, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %78 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %79, i32 %80)
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @W_CIR_ICC, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %119

86:                                               ; preds = %73
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @W_CIR_COD_MASK, align 4
  %89 = and i32 %87, %88
  store i32 %89, i32* %5, align 4
  %90 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %91 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.dchannel*, %struct.dchannel** %3, align 8
  %94 = getelementptr inbounds %struct.dchannel, %struct.dchannel* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %5, align 4
  %97 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %92, i32 %95, i32 %96)
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %100 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %102 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @led, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %86
  %108 = load i32, i32* %5, align 4
  switch i32 %108, label %112 [
    i32 128, label %109
    i32 129, label %109
  ]

109:                                              ; preds = %107, %107
  %110 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %111 = call i32 @w6692_led_handler(%struct.w6692_hw* %110, i32 1)
  br label %115

112:                                              ; preds = %107
  %113 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %114 = call i32 @w6692_led_handler(%struct.w6692_hw* %113, i32 0)
  br label %115

115:                                              ; preds = %112, %109
  br label %116

116:                                              ; preds = %115, %86
  %117 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %118 = call i32 @W6692_new_ph(%struct.w6692_hw* %117)
  br label %119

119:                                              ; preds = %116, %73
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @W_CIR_SCC, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %119
  %125 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %126 = load i32, i32* @W_SQR, align 4
  %127 = call i32 @ReadW6692(%struct.w6692_hw* %125, i32 %126)
  store i32 %127, i32* %5, align 4
  %128 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %129 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %5, align 4
  %132 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %124, %119
  br label %134

134:                                              ; preds = %133, %68
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @W_D_EXI_WEXP, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %141 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %139, %134
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* @W_D_EXI_TEXP, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %151 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %149, %144
  ret void
}

declare dso_local i32 @ReadW6692(%struct.w6692_hw*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @d_retransmit(%struct.w6692_hw*) #1

declare dso_local i32 @WriteW6692(%struct.w6692_hw*, i32, i32) #1

declare dso_local i32 @w6692_led_handler(%struct.w6692_hw*, i32) #1

declare dso_local i32 @W6692_new_ph(%struct.w6692_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
