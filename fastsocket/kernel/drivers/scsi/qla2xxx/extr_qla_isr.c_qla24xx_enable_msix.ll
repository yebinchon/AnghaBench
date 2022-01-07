; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_isr.c_qla24xx_enable_msix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_isr.c_qla24xx_enable_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.qla_hw_data = type { i32, i32, i32, i32, i32, i64, %struct.qla_msix_entry*, %struct.TYPE_4__, i32 }
%struct.qla_msix_entry = type { i32, i32, i32, %struct.rsp_que* }
%struct.TYPE_4__ = type { i32 }
%struct.rsp_que = type { %struct.qla_msix_entry* }
%struct.msix_entry = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to allocate memory for msix_entry.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"MSI-X: Failed to enable support -- %d/%d\0A Retry with %d vectors.\0A\00", align 1
@ql_log_fatal = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"MSI-X: Failed to enable support, giving   up -- %d/%d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Failed to allocate memory for ha->msix_entries.\0A\00", align 1
@qla82xx_msix_entries = common dso_local global %struct.TYPE_5__* null, align 8
@msix_entries = common dso_local global %struct.TYPE_6__* null, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"MSI-X: unable to register handler -- %x/%d.\0A\00", align 1
@ql_dbg_multiq = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [52 x i8] c"mqiobase=%p, max_rsp_queues=%d, max_req_queues=%d.\0A\00", align 1
@ql_dbg_init = common dso_local global i32 0, align 4
@MIN_MSIX_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qla_hw_data*, %struct.rsp_que*)* @qla24xx_enable_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla24xx_enable_msix(%struct.qla_hw_data* %0, %struct.rsp_que* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca %struct.rsp_que*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.msix_entry*, align 8
  %9 = alloca %struct.qla_msix_entry*, align 8
  %10 = alloca i32*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %4, align 8
  store %struct.rsp_que* %1, %struct.rsp_que** %5, align 8
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %12 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 4
  %14 = call i32* @pci_get_drvdata(i32 %13)
  store i32* %14, i32** %10, align 8
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %16 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = mul i64 8, %18
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kzalloc(i32 %20, i32 %21)
  %23 = bitcast i8* %22 to %struct.msix_entry*
  store %struct.msix_entry* %23, %struct.msix_entry** %8, align 8
  %24 = load %struct.msix_entry*, %struct.msix_entry** %8, align 8
  %25 = icmp ne %struct.msix_entry* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ql_log_warn, align 4
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 (i32, i32*, i32, i8*, ...) @ql_log(i32 %27, i32* %28, i32 188, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %317

32:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %46, %32
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %36 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.msix_entry*, %struct.msix_entry** %8, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %41, i64 %43
  %45 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %44, i32 0, i32 0
  store i32 %40, i32* %45, align 4
  br label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %33

49:                                               ; preds = %33
  %50 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %51 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.msix_entry*, %struct.msix_entry** %8, align 8
  %54 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %55 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @pci_enable_msix(i32 %52, %struct.msix_entry* %53, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %102

60:                                               ; preds = %49
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 2
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %87

64:                                               ; preds = %60
  %65 = load i32, i32* @ql_log_warn, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %68 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 (i32, i32*, i32, i8*, ...) @ql_log(i32 %65, i32* %66, i32 198, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %75 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %77 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.msix_entry*, %struct.msix_entry** %8, align 8
  %80 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %81 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @pci_enable_msix(i32 %78, %struct.msix_entry* %79, i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %64
  br label %87

87:                                               ; preds = %86, %63
  %88 = load i32, i32* @ql_log_fatal, align 4
  %89 = load i32*, i32** %10, align 8
  %90 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %91 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 (i32, i32*, i32, i8*, ...) @ql_log(i32 %88, i32* %89, i32 199, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %92, i32 %93)
  br label %313

95:                                               ; preds = %64
  %96 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %97 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %98, 1
  %100 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %101 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %95, %49
  %103 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %104 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = mul i64 24, %106
  %108 = trunc i64 %107 to i32
  %109 = load i32, i32* @GFP_KERNEL, align 4
  %110 = call i8* @kzalloc(i32 %108, i32 %109)
  %111 = bitcast i8* %110 to %struct.qla_msix_entry*
  %112 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %113 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %112, i32 0, i32 6
  store %struct.qla_msix_entry* %111, %struct.qla_msix_entry** %113, align 8
  %114 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %115 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %114, i32 0, i32 6
  %116 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %115, align 8
  %117 = icmp ne %struct.qla_msix_entry* %116, null
  br i1 %117, label %124, label %118

118:                                              ; preds = %102
  %119 = load i32, i32* @ql_log_fatal, align 4
  %120 = load i32*, i32** %10, align 8
  %121 = call i32 (i32, i32*, i32, i8*, ...) @ql_log(i32 %119, i32* %120, i32 200, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %7, align 4
  br label %313

124:                                              ; preds = %102
  %125 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %126 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %125, i32 0, i32 7
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  store i32 1, i32* %127, align 8
  store i32 0, i32* %6, align 4
  br label %128

128:                                              ; preds = %161, %124
  %129 = load i32, i32* %6, align 4
  %130 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %131 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %164

134:                                              ; preds = %128
  %135 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %136 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %135, i32 0, i32 6
  %137 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %137, i64 %139
  store %struct.qla_msix_entry* %140, %struct.qla_msix_entry** %9, align 8
  %141 = load %struct.msix_entry*, %struct.msix_entry** %8, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %141, i64 %143
  %145 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %9, align 8
  %148 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load %struct.msix_entry*, %struct.msix_entry** %8, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %149, i64 %151
  %153 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %9, align 8
  %156 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  %157 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %9, align 8
  %158 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %157, i32 0, i32 2
  store i32 0, i32* %158, align 8
  %159 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %9, align 8
  %160 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %159, i32 0, i32 3
  store %struct.rsp_que* null, %struct.rsp_que** %160, align 8
  br label %161

161:                                              ; preds = %134
  %162 = load i32, i32* %6, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %6, align 4
  br label %128

164:                                              ; preds = %128
  store i32 0, i32* %6, align 4
  br label %165

165:                                              ; preds = %238, %164
  %166 = load i32, i32* %6, align 4
  %167 = icmp slt i32 %166, 2
  br i1 %167, label %168, label %241

168:                                              ; preds = %165
  %169 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %170 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %169, i32 0, i32 6
  %171 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %170, align 8
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %171, i64 %173
  store %struct.qla_msix_entry* %174, %struct.qla_msix_entry** %9, align 8
  %175 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %176 = call i64 @IS_QLA82XX(%struct.qla_hw_data* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %196

178:                                              ; preds = %168
  %179 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %9, align 8
  %180 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** @qla82xx_msix_entries, align 8
  %183 = load i32, i32* %6, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** @qla82xx_msix_entries, align 8
  %189 = load i32, i32* %6, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %195 = call i32 @request_irq(i32 %181, i32 %187, i32 0, i32 %193, %struct.rsp_que* %194)
  store i32 %195, i32* %7, align 4
  br label %214

196:                                              ; preds = %168
  %197 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %9, align 8
  %198 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** @msix_entries, align 8
  %201 = load i32, i32* %6, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** @msix_entries, align 8
  %207 = load i32, i32* %6, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %213 = call i32 @request_irq(i32 %199, i32 %205, i32 0, i32 %211, %struct.rsp_que* %212)
  store i32 %213, i32* %7, align 4
  br label %214

214:                                              ; preds = %196, %178
  %215 = load i32, i32* %7, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %229

217:                                              ; preds = %214
  %218 = load i32, i32* @ql_log_fatal, align 4
  %219 = load i32*, i32** %10, align 8
  %220 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %9, align 8
  %221 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* %7, align 4
  %224 = call i32 (i32, i32*, i32, i8*, ...) @ql_log(i32 %218, i32* %219, i32 203, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %222, i32 %223)
  %225 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %226 = call i32 @qla24xx_disable_msix(%struct.qla_hw_data* %225)
  %227 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %228 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %227, i32 0, i32 2
  store i32 0, i32* %228, align 8
  br label %313

229:                                              ; preds = %214
  %230 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %9, align 8
  %231 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %230, i32 0, i32 2
  store i32 1, i32* %231, align 8
  %232 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %233 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %9, align 8
  %234 = getelementptr inbounds %struct.qla_msix_entry, %struct.qla_msix_entry* %233, i32 0, i32 3
  store %struct.rsp_que* %232, %struct.rsp_que** %234, align 8
  %235 = load %struct.qla_msix_entry*, %struct.qla_msix_entry** %9, align 8
  %236 = load %struct.rsp_que*, %struct.rsp_que** %5, align 8
  %237 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %236, i32 0, i32 0
  store %struct.qla_msix_entry* %235, %struct.qla_msix_entry** %237, align 8
  br label %238

238:                                              ; preds = %229
  %239 = load i32, i32* %6, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %6, align 4
  br label %165

241:                                              ; preds = %165
  %242 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %243 = call i64 @IS_QLA83XX(%struct.qla_hw_data* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %269

245:                                              ; preds = %241
  %246 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %247 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %246, i32 0, i32 5
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %268

250:                                              ; preds = %245
  %251 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %252 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 8
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %268

255:                                              ; preds = %250
  %256 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %257 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = icmp sgt i32 %258, 1
  br i1 %259, label %265, label %260

260:                                              ; preds = %255
  %261 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %262 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = icmp sgt i32 %263, 1
  br i1 %264, label %265, label %268

265:                                              ; preds = %260, %255
  %266 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %267 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %266, i32 0, i32 2
  store i32 1, i32* %267, align 8
  br label %268

268:                                              ; preds = %265, %260, %250, %245
  br label %288

269:                                              ; preds = %241
  %270 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %271 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %270, i32 0, i32 4
  %272 = load i32, i32* %271, align 8
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %287

274:                                              ; preds = %269
  %275 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %276 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = icmp sgt i32 %277, 1
  br i1 %278, label %284, label %279

279:                                              ; preds = %274
  %280 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %281 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 4
  %283 = icmp sgt i32 %282, 1
  br i1 %283, label %284, label %287

284:                                              ; preds = %279, %274
  %285 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %286 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %285, i32 0, i32 2
  store i32 1, i32* %286, align 8
  br label %287

287:                                              ; preds = %284, %279, %269
  br label %288

288:                                              ; preds = %287, %268
  %289 = load i32, i32* @ql_dbg_multiq, align 4
  %290 = load i32*, i32** %10, align 8
  %291 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %292 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %291, i32 0, i32 4
  %293 = load i32, i32* %292, align 8
  %294 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %295 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %298 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @ql_dbg(i32 %289, i32* %290, i32 49157, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 %293, i32 %296, i32 %299)
  %301 = load i32, i32* @ql_dbg_init, align 4
  %302 = load i32*, i32** %10, align 8
  %303 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %304 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %303, i32 0, i32 4
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %307 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %310 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @ql_dbg(i32 %301, i32* %302, i32 85, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 %305, i32 %308, i32 %311)
  br label %313

313:                                              ; preds = %288, %217, %118, %87
  %314 = load %struct.msix_entry*, %struct.msix_entry** %8, align 8
  %315 = call i32 @kfree(%struct.msix_entry* %314)
  %316 = load i32, i32* %7, align 4
  store i32 %316, i32* %3, align 4
  br label %317

317:                                              ; preds = %313, %26
  %318 = load i32, i32* %3, align 4
  ret i32 %318
}

declare dso_local i32* @pci_get_drvdata(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @ql_log(i32, i32*, i32, i8*, ...) #1

declare dso_local i32 @pci_enable_msix(i32, %struct.msix_entry*, i32) #1

declare dso_local i64 @IS_QLA82XX(%struct.qla_hw_data*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.rsp_que*) #1

declare dso_local i32 @qla24xx_disable_msix(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA83XX(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_dbg(i32, i32*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.msix_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
