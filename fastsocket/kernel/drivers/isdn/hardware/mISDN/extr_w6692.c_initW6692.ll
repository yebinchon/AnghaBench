; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_w6692.c_initW6692.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_w6692.c_initW6692.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w6692_hw = type { i32, i64, i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i8* }

@dbusy_timer_handler = common dso_local global i64 0, align 8
@ISDN_P_NONE = common dso_local global i32 0, align 4
@W_D_CTL = common dso_local global i32 0, align 4
@W_D_SAM = common dso_local global i32 0, align 4
@W_D_TAM = common dso_local global i32 0, align 4
@W_D_MODE = common dso_local global i32 0, align 4
@W_D_MODE_RACT = common dso_local global i32 0, align 4
@W_L1CMD_RST = common dso_local global i32 0, align 4
@W_L1CMD_ECK = common dso_local global i32 0, align 4
@W_D_EXIM = common dso_local global i32 0, align 4
@W_B_EXIM = common dso_local global i32 0, align 4
@W_D_CMDR = common dso_local global i32 0, align 4
@W_D_CMDR_RRST = common dso_local global i32 0, align 4
@W_D_CMDR_XRST = common dso_local global i32 0, align 4
@W_B_CMDR = common dso_local global i32 0, align 4
@W_B_CMDR_RRST = common dso_local global i32 0, align 4
@W_B_CMDR_XRST = common dso_local global i32 0, align 4
@W6692_USR = common dso_local global i64 0, align 8
@W_PCTL = common dso_local global i32 0, align 4
@W_XDATA = common dso_local global i32 0, align 4
@W_PCTL_OE5 = common dso_local global i32 0, align 4
@W_PCTL_OE4 = common dso_local global i32 0, align 4
@W_PCTL_OE2 = common dso_local global i32 0, align 4
@W_PCTL_OE1 = common dso_local global i32 0, align 4
@W_PCTL_OE0 = common dso_local global i32 0, align 4
@pots = common dso_local global i32 0, align 4
@led = common dso_local global i32 0, align 4
@W_XADDR = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@DEBUG_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s: W_XADDR=%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initW6692(%struct.w6692_hw* %0) #0 {
  %2 = alloca %struct.w6692_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.w6692_hw* %0, %struct.w6692_hw** %2, align 8
  %4 = load i64, i64* @dbusy_timer_handler, align 8
  %5 = inttoptr i64 %4 to i8*
  %6 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %7 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i8* %5, i8** %9, align 8
  %10 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %11 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %10, i32 0, i32 9
  %12 = ptrtoint %struct.TYPE_3__* %11 to i64
  %13 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %14 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i64 %12, i64* %16, align 8
  %17 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %18 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %17, i32 0, i32 9
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @init_timer(%struct.TYPE_4__* %19)
  %21 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %22 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %21, i32 0, i32 7
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* @ISDN_P_NONE, align 4
  %26 = call i32 @w6692_mode(i32* %24, i32 %25)
  %27 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %28 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %27, i32 0, i32 7
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* @ISDN_P_NONE, align 4
  %32 = call i32 @w6692_mode(i32* %30, i32 %31)
  %33 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %34 = load i32, i32* @W_D_CTL, align 4
  %35 = call i32 @WriteW6692(%struct.w6692_hw* %33, i32 %34, i32 0)
  %36 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %37 = call i32 @disable_hwirq(%struct.w6692_hw* %36)
  %38 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %39 = load i32, i32* @W_D_SAM, align 4
  %40 = call i32 @WriteW6692(%struct.w6692_hw* %38, i32 %39, i32 255)
  %41 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %42 = load i32, i32* @W_D_TAM, align 4
  %43 = call i32 @WriteW6692(%struct.w6692_hw* %41, i32 %42, i32 255)
  %44 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %45 = load i32, i32* @W_D_MODE, align 4
  %46 = load i32, i32* @W_D_MODE_RACT, align 4
  %47 = call i32 @WriteW6692(%struct.w6692_hw* %44, i32 %45, i32 %46)
  %48 = load i32, i32* @W_L1CMD_RST, align 4
  %49 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %50 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 8
  %51 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %52 = load i32, i32* @W_L1CMD_RST, align 4
  %53 = call i32 @ph_command(%struct.w6692_hw* %51, i32 %52)
  %54 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %55 = load i32, i32* @W_L1CMD_ECK, align 4
  %56 = call i32 @ph_command(%struct.w6692_hw* %54, i32 %55)
  %57 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %58 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %57, i32 0, i32 0
  store i32 24, i32* %58, align 8
  %59 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %60 = load i32, i32* @W_D_EXIM, align 4
  %61 = call i32 @WriteW6692(%struct.w6692_hw* %59, i32 %60, i32 0)
  %62 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %63 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %62, i32 0, i32 7
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* @W_B_EXIM, align 4
  %67 = call i32 @WriteW6692B(i32* %65, i32 %66, i32 0)
  %68 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %69 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %68, i32 0, i32 7
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* @W_B_EXIM, align 4
  %73 = call i32 @WriteW6692B(i32* %71, i32 %72, i32 0)
  %74 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %75 = load i32, i32* @W_D_CMDR, align 4
  %76 = load i32, i32* @W_D_CMDR_RRST, align 4
  %77 = load i32, i32* @W_D_CMDR_XRST, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @WriteW6692(%struct.w6692_hw* %74, i32 %75, i32 %78)
  %80 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %81 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %80, i32 0, i32 7
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* @W_B_CMDR, align 4
  %85 = load i32, i32* @W_B_CMDR_RRST, align 4
  %86 = load i32, i32* @W_B_CMDR_XRST, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @WriteW6692B(i32* %83, i32 %84, i32 %87)
  %89 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %90 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %89, i32 0, i32 7
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* @W_B_CMDR, align 4
  %94 = load i32, i32* @W_B_CMDR_RRST, align 4
  %95 = load i32, i32* @W_B_CMDR_XRST, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @WriteW6692B(i32* %92, i32 %93, i32 %96)
  %98 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %99 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @W6692_USR, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %120

103:                                              ; preds = %1
  %104 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %105 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %104, i32 0, i32 2
  store i32 128, i32* %105, align 8
  %106 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %107 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %106, i32 0, i32 3
  store i32 0, i32* %107, align 4
  %108 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %109 = load i32, i32* @W_PCTL, align 4
  %110 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %111 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @WriteW6692(%struct.w6692_hw* %108, i32 %109, i32 %112)
  %114 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %115 = load i32, i32* @W_XDATA, align 4
  %116 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %117 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @WriteW6692(%struct.w6692_hw* %114, i32 %115, i32 %118)
  br label %205

120:                                              ; preds = %1
  %121 = load i32, i32* @W_PCTL_OE5, align 4
  %122 = load i32, i32* @W_PCTL_OE4, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @W_PCTL_OE2, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @W_PCTL_OE1, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @W_PCTL_OE0, align 4
  %129 = or i32 %127, %128
  %130 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %131 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  %132 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %133 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %132, i32 0, i32 4
  store i32 0, i32* %133, align 8
  %134 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %135 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @pots, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %120
  %141 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %142 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, 6
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %140, %120
  %146 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %147 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @led, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %145
  %153 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %154 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, 4
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %152, %145
  %158 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %159 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @pots, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %171, label %164

164:                                              ; preds = %157
  %165 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %166 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @led, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %204

171:                                              ; preds = %164, %157
  %172 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %173 = load i32, i32* @W_PCTL, align 4
  %174 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %175 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @WriteW6692(%struct.w6692_hw* %172, i32 %173, i32 %176)
  %178 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %179 = load i32, i32* @W_XADDR, align 4
  %180 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %181 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @WriteW6692(%struct.w6692_hw* %178, i32 %179, i32 %182)
  %184 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %185 = load i32, i32* @W_XDATA, align 4
  %186 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %187 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @WriteW6692(%struct.w6692_hw* %184, i32 %185, i32 %188)
  %190 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %191 = load i32, i32* @W_XADDR, align 4
  %192 = call i32 @ReadW6692(%struct.w6692_hw* %190, i32 %191)
  store i32 %192, i32* %3, align 4
  %193 = load i32, i32* @debug, align 4
  %194 = load i32, i32* @DEBUG_HW, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %171
  %198 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %199 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %198, i32 0, i32 6
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* %3, align 4
  %202 = call i32 @pr_notice(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %197, %171
  br label %204

204:                                              ; preds = %203, %164
  br label %205

205:                                              ; preds = %204, %103
  ret void
}

declare dso_local i32 @init_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @w6692_mode(i32*, i32) #1

declare dso_local i32 @WriteW6692(%struct.w6692_hw*, i32, i32) #1

declare dso_local i32 @disable_hwirq(%struct.w6692_hw*) #1

declare dso_local i32 @ph_command(%struct.w6692_hw*, i32) #1

declare dso_local i32 @WriteW6692B(i32*, i32, i32) #1

declare dso_local i32 @ReadW6692(%struct.w6692_hw*, i32) #1

declare dso_local i32 @pr_notice(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
