; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_eratt_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_eratt_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32*, i32, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__, i32, %struct.lpfc_register }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.lpfc_register = type { i32 }

@lpfc_sli_intf_if_type = common dso_local global i32 0, align 4
@UNPLUG_ERR = common dso_local global i32 0, align 4
@HA_ERATT = common dso_local global i32 0, align 4
@HBA_ERATT_HANDLED = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [108 x i8] c"1423 HBA Unrecoverable error: uerr_lo_reg=0x%x, uerr_hi_reg=0x%x, ue_mask_lo_reg=0x%x, ue_mask_hi_reg=0x%x\0A\00", align 1
@lpfc_sliport_status_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [95 x i8] c"2885 Port Status Event: port status reg 0x%x, port smphr reg 0x%x, error 1=0x%x, error 2=0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"2886 HBA Error Attention on unsupported if type %d.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*)* @lpfc_sli4_eratt_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_eratt_read(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpfc_register, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  %9 = load i32, i32* @lpfc_sli_intf_if_type, align 4
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 4
  %13 = call i32 @bf_get(i32 %9, %struct.lpfc_register* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %194 [
    i32 130, label %15
    i32 128, label %103
    i32 129, label %193
  ]

15:                                               ; preds = %1
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %17 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @lpfc_readl(i32 %21, i32* %5)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %15
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %26 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @lpfc_readl(i32 %30, i32* %4)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %24, %15
  %34 = load i32, i32* @UNPLUG_ERR, align 4
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %36 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @HA_ERATT, align 4
  %40 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %41 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* @HBA_ERATT_HANDLED, align 4
  %45 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %46 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  store i32 1, i32* %2, align 4
  br label %201

49:                                               ; preds = %24
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %51 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %49
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %60 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %4, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %102

67:                                               ; preds = %58, %49
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %69 = load i32, i32* @KERN_ERR, align 4
  %70 = load i32, i32* @LOG_INIT, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %74 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %78 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %68, i32 %69, i32 %70, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %72, i32 %76, i32 %80)
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %84 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  store i32 %82, i32* %86, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %89 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  store i32 %87, i32* %91, align 4
  %92 = load i32, i32* @HA_ERATT, align 4
  %93 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %94 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load i32, i32* @HBA_ERATT_HANDLED, align 4
  %98 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %99 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  store i32 1, i32* %2, align 4
  br label %201

102:                                              ; preds = %58
  br label %200

103:                                              ; preds = %1
  %104 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %105 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %8, i32 0, i32 0
  %111 = call i32 @lpfc_readl(i32 %109, i32* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %103
  %114 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %115 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @lpfc_readl(i32 %117, i32* %7)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %136

120:                                              ; preds = %113, %103
  %121 = load i32, i32* @UNPLUG_ERR, align 4
  %122 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %123 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load i32, i32* @HA_ERATT, align 4
  %127 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %128 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  %131 = load i32, i32* @HBA_ERATT_HANDLED, align 4
  %132 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %133 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  store i32 1, i32* %2, align 4
  br label %201

136:                                              ; preds = %113
  %137 = load i32, i32* @lpfc_sliport_status_err, align 4
  %138 = call i32 @bf_get(i32 %137, %struct.lpfc_register* %8)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %192

140:                                              ; preds = %136
  %141 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %142 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i8* @readl(i32 %146)
  %148 = ptrtoint i8* %147 to i32
  %149 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %150 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  store i32 %148, i32* %152, align 4
  %153 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %154 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i8* @readl(i32 %158)
  %160 = ptrtoint i8* %159 to i32
  %161 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %162 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  store i32 %160, i32* %164, align 4
  %165 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %166 = load i32, i32* @KERN_ERR, align 4
  %167 = load i32, i32* @LOG_INIT, align 4
  %168 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %8, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %7, align 4
  %171 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %172 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %177 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %165, i32 %166, i32 %167, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.1, i64 0, i64 0), i32 %169, i32 %170, i32 %175, i32 %180)
  %182 = load i32, i32* @HA_ERATT, align 4
  %183 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %184 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 4
  %187 = load i32, i32* @HBA_ERATT_HANDLED, align 4
  %188 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %189 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 8
  store i32 1, i32* %2, align 4
  br label %201

192:                                              ; preds = %136
  br label %200

193:                                              ; preds = %1
  br label %194

194:                                              ; preds = %1, %193
  %195 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %196 = load i32, i32* @KERN_ERR, align 4
  %197 = load i32, i32* @LOG_INIT, align 4
  %198 = load i32, i32* %6, align 4
  %199 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %195, i32 %196, i32 %197, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %198)
  store i32 1, i32* %2, align 4
  br label %201

200:                                              ; preds = %192, %102
  store i32 0, i32* %2, align 4
  br label %201

201:                                              ; preds = %200, %194, %140, %120, %67, %33
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local i32 @bf_get(i32, %struct.lpfc_register*) #1

declare dso_local i32 @lpfc_readl(i32, i32*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, ...) #1

declare dso_local i8* @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
