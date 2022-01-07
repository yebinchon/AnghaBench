; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_init_irqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_init_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32, i8**, %struct.TYPE_4__*, %struct.TYPE_3__*, i64, %struct.hwi_controller*, %struct.pci_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.hwi_controller = type { %struct.hwi_context_memory* }
%struct.hwi_context_memory = type { %struct.beiscsi_hba* }
%struct.pci_dev = type { i32 }

@BEISCSI_MSI_NAME = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"beiscsi_%02x_%02x\00", align 1
@be_isr_msix = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"BM_%d : beiscsi_init_irqs-Failed toregister msix for i = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"beiscsi_mcc_%02x\00", align 1
@be_isr_mcc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"BM_%d : beiscsi_init_irqs-Failed to register beiscsi_msix_mcc\0A\00", align 1
@be_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"beiscsi\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"BM_%d : beiscsi_init_irqs-Failed to register irq\\n\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*)* @beiscsi_init_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_init_irqs(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.hwi_controller*, align 8
  %6 = alloca %struct.hwi_context_memory*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  %11 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %12 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %11, i32 0, i32 6
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %4, align 8
  %14 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %15 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %14, i32 0, i32 5
  %16 = load %struct.hwi_controller*, %struct.hwi_controller** %15, align 8
  store %struct.hwi_controller* %16, %struct.hwi_controller** %5, align 8
  %17 = load %struct.hwi_controller*, %struct.hwi_controller** %5, align 8
  %18 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %17, i32 0, i32 0
  %19 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %18, align 8
  store %struct.hwi_context_memory* %19, %struct.hwi_context_memory** %6, align 8
  %20 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %21 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %186

24:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %108, %24
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %28 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %111

31:                                               ; preds = %25
  %32 = load i32, i32* @BEISCSI_MSI_NAME, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @kzalloc(i32 %32, i32 %33)
  %35 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %36 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %35, i32 0, i32 1
  %37 = load i8**, i8*** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  store i8* %34, i8** %40, align 8
  %41 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %42 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %41, i32 0, i32 1
  %43 = load i8**, i8*** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %31
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %204

52:                                               ; preds = %31
  %53 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %54 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %53, i32 0, i32 1
  %55 = load i8**, i8*** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %61 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %60, i32 0, i32 3
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %68 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @be_isr_msix, align 4
  %77 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %78 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %77, i32 0, i32 1
  %79 = load i8**, i8*** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %6, align 8
  %85 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %84, i32 0, i32 0
  %86 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %86, i64 %88
  %90 = call i32 @request_irq(i32 %75, i32 %76, i32 0, i8* %83, %struct.beiscsi_hba* %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %52
  %94 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %95 = load i32, i32* @KERN_ERR, align 4
  %96 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %94, i32 %95, i32 %96, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %100 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %99, i32 0, i32 1
  %101 = load i8**, i8*** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @kfree(i8* %105)
  br label %204

107:                                              ; preds = %52
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %25

111:                                              ; preds = %25
  %112 = load i32, i32* @BEISCSI_MSI_NAME, align 4
  %113 = load i32, i32* @GFP_KERNEL, align 4
  %114 = call i8* @kzalloc(i32 %112, i32 %113)
  %115 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %116 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %115, i32 0, i32 1
  %117 = load i8**, i8*** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  store i8* %114, i8** %120, align 8
  %121 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %122 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %121, i32 0, i32 1
  %123 = load i8**, i8*** %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %132, label %129

129:                                              ; preds = %111
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %7, align 4
  br label %204

132:                                              ; preds = %111
  %133 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %134 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %133, i32 0, i32 1
  %135 = load i8**, i8*** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %135, i64 %137
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %141 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %140, i32 0, i32 3
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %139, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %144)
  %146 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %147 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %146, i32 0, i32 2
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* @be_isr_mcc, align 4
  %156 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %157 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %156, i32 0, i32 1
  %158 = load i8**, i8*** %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8*, i8** %158, i64 %160
  %162 = load i8*, i8** %161, align 8
  %163 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %6, align 8
  %164 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %163, i32 0, i32 0
  %165 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %165, i64 %167
  %169 = call i32 @request_irq(i32 %154, i32 %155, i32 0, i8* %162, %struct.beiscsi_hba* %168)
  store i32 %169, i32* %7, align 4
  %170 = load i32, i32* %7, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %185

172:                                              ; preds = %132
  %173 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %174 = load i32, i32* @KERN_ERR, align 4
  %175 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %176 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %173, i32 %174, i32 %175, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0))
  %177 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %178 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %177, i32 0, i32 1
  %179 = load i8**, i8*** %178, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8*, i8** %179, i64 %181
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 @kfree(i8* %183)
  br label %204

185:                                              ; preds = %132
  br label %203

186:                                              ; preds = %1
  %187 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %188 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @be_isr, align 4
  %191 = load i32, i32* @IRQF_SHARED, align 4
  %192 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %193 = call i32 @request_irq(i32 %189, i32 %190, i32 %191, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %struct.beiscsi_hba* %192)
  store i32 %193, i32* %7, align 4
  %194 = load i32, i32* %7, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %186
  %197 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %198 = load i32, i32* @KERN_ERR, align 4
  %199 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %200 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %197, i32 %198, i32 %199, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  %201 = load i32, i32* %7, align 4
  store i32 %201, i32* %2, align 4
  br label %240

202:                                              ; preds = %186
  br label %203

203:                                              ; preds = %202, %185
  store i32 0, i32* %2, align 4
  br label %240

204:                                              ; preds = %172, %129, %93, %49
  %205 = load i32, i32* %9, align 4
  %206 = sub nsw i32 %205, 1
  store i32 %206, i32* %10, align 4
  br label %207

207:                                              ; preds = %235, %204
  %208 = load i32, i32* %10, align 4
  %209 = icmp sge i32 %208, 0
  br i1 %209, label %210, label %238

210:                                              ; preds = %207
  %211 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %212 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %211, i32 0, i32 1
  %213 = load i8**, i8*** %212, align 8
  %214 = load i32, i32* %10, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8*, i8** %213, i64 %215
  %217 = load i8*, i8** %216, align 8
  %218 = call i32 @kfree(i8* %217)
  %219 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %220 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %219, i32 0, i32 2
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %220, align 8
  %222 = load i32, i32* %10, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  store i32 %226, i32* %8, align 4
  %227 = load i32, i32* %8, align 4
  %228 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %6, align 8
  %229 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %228, i32 0, i32 0
  %230 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %229, align 8
  %231 = load i32, i32* %10, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %230, i64 %232
  %234 = call i32 @free_irq(i32 %227, %struct.beiscsi_hba* %233)
  br label %235

235:                                              ; preds = %210
  %236 = load i32, i32* %10, align 4
  %237 = add nsw i32 %236, -1
  store i32 %237, i32* %10, align 4
  br label %207

238:                                              ; preds = %207
  %239 = load i32, i32* %7, align 4
  store i32 %239, i32* %2, align 4
  br label %240

240:                                              ; preds = %238, %203, %196
  %241 = load i32, i32* %2, align 4
  ret i32 %241
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @free_irq(i32, %struct.beiscsi_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
