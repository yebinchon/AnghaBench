; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_isr.c_fnic_set_intr_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_isr.c_fnic_set_intr_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i64, i32, %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@FNIC_MSIX_ERR_NOTIFY = common dso_local global i64 0, align 8
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Using MSI-X Interrupts\0A\00", align 1
@VNIC_DEV_INTR_MODE_MSIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Using MSI Interrupts\0A\00", align 1
@VNIC_DEV_INTR_MODE_MSI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Using Legacy Interrupts\0A\00", align 1
@VNIC_DEV_INTR_MODE_INTX = common dso_local global i32 0, align 4
@VNIC_DEV_INTR_MODE_UNKNOWN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fnic_set_intr_mode(%struct.fnic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fnic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fnic* %0, %struct.fnic** %3, align 8
  %8 = load %struct.fnic*, %struct.fnic** %3, align 8
  %9 = getelementptr inbounds %struct.fnic, %struct.fnic* %8, i32 0, i32 13
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.fnic*, %struct.fnic** %3, align 8
  %13 = getelementptr inbounds %struct.fnic, %struct.fnic* %12, i32 0, i32 12
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.fnic*, %struct.fnic** %3, align 8
  %17 = getelementptr inbounds %struct.fnic, %struct.fnic* %16, i32 0, i32 11
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.fnic*, %struct.fnic** %3, align 8
  %21 = getelementptr inbounds %struct.fnic, %struct.fnic* %20, i32 0, i32 10
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %22)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = add i32 %24, %25
  %27 = load i32, i32* %6, align 4
  %28 = add i32 %26, %27
  %29 = add i32 %28, 1
  %30 = icmp ult i32 %23, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %51, %1
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = add i32 %35, %36
  %38 = load i32, i32* %6, align 4
  %39 = add i32 %37, %38
  %40 = add i32 %39, 1
  %41 = icmp ult i32 %34, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %33
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.fnic*, %struct.fnic** %3, align 8
  %45 = getelementptr inbounds %struct.fnic, %struct.fnic* %44, i32 0, i32 10
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 %43, i32* %50, align 4
  br label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %7, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %33

54:                                               ; preds = %33
  %55 = load %struct.fnic*, %struct.fnic** %3, align 8
  %56 = getelementptr inbounds %struct.fnic, %struct.fnic* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = icmp uge i32 %57, %58
  br i1 %59, label %60, label %143

60:                                               ; preds = %54
  %61 = load %struct.fnic*, %struct.fnic** %3, align 8
  %62 = getelementptr inbounds %struct.fnic, %struct.fnic* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp uge i32 %63, %64
  br i1 %65, label %66, label %143

66:                                               ; preds = %60
  %67 = load %struct.fnic*, %struct.fnic** %3, align 8
  %68 = getelementptr inbounds %struct.fnic, %struct.fnic* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = icmp uge i32 %69, %70
  br i1 %71, label %72, label %143

72:                                               ; preds = %66
  %73 = load %struct.fnic*, %struct.fnic** %3, align 8
  %74 = getelementptr inbounds %struct.fnic, %struct.fnic* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %5, align 4
  %78 = add i32 %76, %77
  %79 = load i32, i32* %6, align 4
  %80 = add i32 %78, %79
  %81 = icmp uge i32 %75, %80
  br i1 %81, label %82, label %143

82:                                               ; preds = %72
  %83 = load %struct.fnic*, %struct.fnic** %3, align 8
  %84 = getelementptr inbounds %struct.fnic, %struct.fnic* %83, i32 0, i32 9
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.fnic*, %struct.fnic** %3, align 8
  %87 = getelementptr inbounds %struct.fnic, %struct.fnic* %86, i32 0, i32 10
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* %5, align 4
  %91 = add i32 %89, %90
  %92 = load i32, i32* %6, align 4
  %93 = add i32 %91, %92
  %94 = add i32 %93, 1
  %95 = call i32 @pci_enable_msix(i32 %85, %struct.TYPE_5__* %88, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %142, label %97

97:                                               ; preds = %82
  %98 = load i32, i32* %4, align 4
  %99 = load %struct.fnic*, %struct.fnic** %3, align 8
  %100 = getelementptr inbounds %struct.fnic, %struct.fnic* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.fnic*, %struct.fnic** %3, align 8
  %103 = getelementptr inbounds %struct.fnic, %struct.fnic* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.fnic*, %struct.fnic** %3, align 8
  %106 = getelementptr inbounds %struct.fnic, %struct.fnic* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* %6, align 4
  %109 = add i32 %107, %108
  %110 = load %struct.fnic*, %struct.fnic** %3, align 8
  %111 = getelementptr inbounds %struct.fnic, %struct.fnic* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* %5, align 4
  %114 = add i32 %112, %113
  %115 = load i32, i32* %6, align 4
  %116 = add i32 %114, %115
  %117 = load %struct.fnic*, %struct.fnic** %3, align 8
  %118 = getelementptr inbounds %struct.fnic, %struct.fnic* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* %5, align 4
  %121 = add i32 %119, %120
  %122 = load i32, i32* %6, align 4
  %123 = add i32 %121, %122
  %124 = add i32 %123, 1
  %125 = load %struct.fnic*, %struct.fnic** %3, align 8
  %126 = getelementptr inbounds %struct.fnic, %struct.fnic* %125, i32 0, i32 5
  store i32 %124, i32* %126, align 4
  %127 = load i64, i64* @FNIC_MSIX_ERR_NOTIFY, align 8
  %128 = load %struct.fnic*, %struct.fnic** %3, align 8
  %129 = getelementptr inbounds %struct.fnic, %struct.fnic* %128, i32 0, i32 8
  store i64 %127, i64* %129, align 8
  %130 = load i32, i32* @KERN_DEBUG, align 4
  %131 = load %struct.fnic*, %struct.fnic** %3, align 8
  %132 = getelementptr inbounds %struct.fnic, %struct.fnic* %131, i32 0, i32 7
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @FNIC_ISR_DBG(i32 %130, i32 %135, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %137 = load %struct.fnic*, %struct.fnic** %3, align 8
  %138 = getelementptr inbounds %struct.fnic, %struct.fnic* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @VNIC_DEV_INTR_MODE_MSIX, align 4
  %141 = call i32 @vnic_dev_set_intr_mode(i32 %139, i32 %140)
  store i32 0, i32* %2, align 4
  br label %257

142:                                              ; preds = %82
  br label %143

143:                                              ; preds = %142, %72, %66, %60, %54
  %144 = load %struct.fnic*, %struct.fnic** %3, align 8
  %145 = getelementptr inbounds %struct.fnic, %struct.fnic* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp uge i32 %146, 1
  br i1 %147, label %148, label %201

148:                                              ; preds = %143
  %149 = load %struct.fnic*, %struct.fnic** %3, align 8
  %150 = getelementptr inbounds %struct.fnic, %struct.fnic* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = icmp uge i32 %151, 1
  br i1 %152, label %153, label %201

153:                                              ; preds = %148
  %154 = load %struct.fnic*, %struct.fnic** %3, align 8
  %155 = getelementptr inbounds %struct.fnic, %struct.fnic* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = icmp uge i32 %156, 1
  br i1 %157, label %158, label %201

158:                                              ; preds = %153
  %159 = load %struct.fnic*, %struct.fnic** %3, align 8
  %160 = getelementptr inbounds %struct.fnic, %struct.fnic* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = icmp uge i32 %161, 3
  br i1 %162, label %163, label %201

163:                                              ; preds = %158
  %164 = load %struct.fnic*, %struct.fnic** %3, align 8
  %165 = getelementptr inbounds %struct.fnic, %struct.fnic* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = icmp uge i32 %166, 1
  br i1 %167, label %168, label %201

168:                                              ; preds = %163
  %169 = load %struct.fnic*, %struct.fnic** %3, align 8
  %170 = getelementptr inbounds %struct.fnic, %struct.fnic* %169, i32 0, i32 9
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @pci_enable_msi(i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %201, label %174

174:                                              ; preds = %168
  %175 = load %struct.fnic*, %struct.fnic** %3, align 8
  %176 = getelementptr inbounds %struct.fnic, %struct.fnic* %175, i32 0, i32 0
  store i32 1, i32* %176, align 8
  %177 = load %struct.fnic*, %struct.fnic** %3, align 8
  %178 = getelementptr inbounds %struct.fnic, %struct.fnic* %177, i32 0, i32 1
  store i32 1, i32* %178, align 4
  %179 = load %struct.fnic*, %struct.fnic** %3, align 8
  %180 = getelementptr inbounds %struct.fnic, %struct.fnic* %179, i32 0, i32 2
  store i32 1, i32* %180, align 8
  %181 = load %struct.fnic*, %struct.fnic** %3, align 8
  %182 = getelementptr inbounds %struct.fnic, %struct.fnic* %181, i32 0, i32 4
  store i32 2, i32* %182, align 8
  %183 = load %struct.fnic*, %struct.fnic** %3, align 8
  %184 = getelementptr inbounds %struct.fnic, %struct.fnic* %183, i32 0, i32 3
  store i32 3, i32* %184, align 4
  %185 = load %struct.fnic*, %struct.fnic** %3, align 8
  %186 = getelementptr inbounds %struct.fnic, %struct.fnic* %185, i32 0, i32 5
  store i32 1, i32* %186, align 4
  %187 = load %struct.fnic*, %struct.fnic** %3, align 8
  %188 = getelementptr inbounds %struct.fnic, %struct.fnic* %187, i32 0, i32 8
  store i64 0, i64* %188, align 8
  %189 = load i32, i32* @KERN_DEBUG, align 4
  %190 = load %struct.fnic*, %struct.fnic** %3, align 8
  %191 = getelementptr inbounds %struct.fnic, %struct.fnic* %190, i32 0, i32 7
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @FNIC_ISR_DBG(i32 %189, i32 %194, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %196 = load %struct.fnic*, %struct.fnic** %3, align 8
  %197 = getelementptr inbounds %struct.fnic, %struct.fnic* %196, i32 0, i32 6
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @VNIC_DEV_INTR_MODE_MSI, align 4
  %200 = call i32 @vnic_dev_set_intr_mode(i32 %198, i32 %199)
  store i32 0, i32* %2, align 4
  br label %257

201:                                              ; preds = %168, %163, %158, %153, %148, %143
  %202 = load %struct.fnic*, %struct.fnic** %3, align 8
  %203 = getelementptr inbounds %struct.fnic, %struct.fnic* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp uge i32 %204, 1
  br i1 %205, label %206, label %249

206:                                              ; preds = %201
  %207 = load %struct.fnic*, %struct.fnic** %3, align 8
  %208 = getelementptr inbounds %struct.fnic, %struct.fnic* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = icmp uge i32 %209, 1
  br i1 %210, label %211, label %249

211:                                              ; preds = %206
  %212 = load %struct.fnic*, %struct.fnic** %3, align 8
  %213 = getelementptr inbounds %struct.fnic, %struct.fnic* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = icmp uge i32 %214, 1
  br i1 %215, label %216, label %249

216:                                              ; preds = %211
  %217 = load %struct.fnic*, %struct.fnic** %3, align 8
  %218 = getelementptr inbounds %struct.fnic, %struct.fnic* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = icmp uge i32 %219, 3
  br i1 %220, label %221, label %249

221:                                              ; preds = %216
  %222 = load %struct.fnic*, %struct.fnic** %3, align 8
  %223 = getelementptr inbounds %struct.fnic, %struct.fnic* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 4
  %225 = icmp uge i32 %224, 3
  br i1 %225, label %226, label %249

226:                                              ; preds = %221
  %227 = load %struct.fnic*, %struct.fnic** %3, align 8
  %228 = getelementptr inbounds %struct.fnic, %struct.fnic* %227, i32 0, i32 0
  store i32 1, i32* %228, align 8
  %229 = load %struct.fnic*, %struct.fnic** %3, align 8
  %230 = getelementptr inbounds %struct.fnic, %struct.fnic* %229, i32 0, i32 1
  store i32 1, i32* %230, align 4
  %231 = load %struct.fnic*, %struct.fnic** %3, align 8
  %232 = getelementptr inbounds %struct.fnic, %struct.fnic* %231, i32 0, i32 2
  store i32 1, i32* %232, align 8
  %233 = load %struct.fnic*, %struct.fnic** %3, align 8
  %234 = getelementptr inbounds %struct.fnic, %struct.fnic* %233, i32 0, i32 3
  store i32 3, i32* %234, align 4
  %235 = load %struct.fnic*, %struct.fnic** %3, align 8
  %236 = getelementptr inbounds %struct.fnic, %struct.fnic* %235, i32 0, i32 5
  store i32 3, i32* %236, align 4
  %237 = load i32, i32* @KERN_DEBUG, align 4
  %238 = load %struct.fnic*, %struct.fnic** %3, align 8
  %239 = getelementptr inbounds %struct.fnic, %struct.fnic* %238, i32 0, i32 7
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @FNIC_ISR_DBG(i32 %237, i32 %242, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %244 = load %struct.fnic*, %struct.fnic** %3, align 8
  %245 = getelementptr inbounds %struct.fnic, %struct.fnic* %244, i32 0, i32 6
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @VNIC_DEV_INTR_MODE_INTX, align 4
  %248 = call i32 @vnic_dev_set_intr_mode(i32 %246, i32 %247)
  store i32 0, i32* %2, align 4
  br label %257

249:                                              ; preds = %221, %216, %211, %206, %201
  %250 = load %struct.fnic*, %struct.fnic** %3, align 8
  %251 = getelementptr inbounds %struct.fnic, %struct.fnic* %250, i32 0, i32 6
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @VNIC_DEV_INTR_MODE_UNKNOWN, align 4
  %254 = call i32 @vnic_dev_set_intr_mode(i32 %252, i32 %253)
  %255 = load i32, i32* @EINVAL, align 4
  %256 = sub nsw i32 0, %255
  store i32 %256, i32* %2, align 4
  br label %257

257:                                              ; preds = %249, %226, %174, %97
  %258 = load i32, i32* %2, align 4
  ret i32 %258
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pci_enable_msix(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @FNIC_ISR_DBG(i32, i32, i8*) #1

declare dso_local i32 @vnic_dev_set_intr_mode(i32, i32) #1

declare dso_local i32 @pci_enable_msi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
