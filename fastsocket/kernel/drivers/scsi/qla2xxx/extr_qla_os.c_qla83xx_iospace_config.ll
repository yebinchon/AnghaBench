; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla83xx_iospace_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla83xx_iospace_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32, i32, i32, i32, i8*, i8*, i8*, i32 }

@QLA2XXX_DRIVER_NAME = common dso_local global i32 0, align 4
@ql_log_fatal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Failed to reserve PIO/MMIO regions (%s), aborting.\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Invalid pci I/O region size (%s).\0A\00", align 1
@MIN_IOBASE_LEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"Invalid PCI mem region size (%s), aborting\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Cannot remap MMIO (%s), aborting.\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"BAR2/region4 not enabled\0A\00", align 1
@QLA_83XX_PCI_MSIX_CONTROL = common dso_local global i32 0, align 4
@ql2xmultique_tag = common dso_local global i64 0, align 8
@ql2xmaxqueues = common dso_local global i32 0, align 4
@QLA_MQ_SIZE = common dso_local global i32 0, align 4
@ql_dbg_multiq = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"QoS mode set, max no of request queues:%d.\0A\00", align 1
@ql_dbg_init = common dso_local global i32 0, align 4
@ql_log_info = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"MSI-X vector count: %d.\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"BAR 1 not enabled.\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"MSIX Count:%d.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qla_hw_data*)* @qla83xx_iospace_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla83xx_iospace_config(%struct.qla_hw_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qla_hw_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %3, align 8
  %6 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %7 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %10 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @QLA2XXX_DRIVER_NAME, align 4
  %13 = call i64 @pci_request_selected_regions(i32 %8, i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load i32, i32* @ql_log_fatal, align 4
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %18 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %21 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pci_name(i32 %22)
  %24 = call i32 (i32, i32, i32, i8*, ...) @ql_log_pci(i32 %16, i32 %19, i32 279, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %219

25:                                               ; preds = %1
  %26 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %27 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pci_resource_flags(i32 %28, i32 0)
  %30 = load i32, i32* @IORESOURCE_MEM, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @ql_log_warn, align 4
  %35 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %36 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %39 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pci_name(i32 %40)
  %42 = call i32 (i32, i32, i32, i8*, ...) @ql_log_pci(i32 %34, i32 %37, i32 280, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %219

43:                                               ; preds = %25
  %44 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %45 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @pci_resource_len(i32 %46, i32 0)
  %48 = load i64, i64* @MIN_IOBASE_LEN, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %43
  %51 = load i32, i32* @ql_log_warn, align 4
  %52 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %53 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %56 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pci_name(i32 %57)
  %59 = call i32 (i32, i32, i32, i8*, ...) @ql_log_pci(i32 %51, i32 %54, i32 281, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %219

60:                                               ; preds = %43
  %61 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %62 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @pci_resource_start(i32 %63, i32 0)
  %65 = load i64, i64* @MIN_IOBASE_LEN, align 8
  %66 = call i8* @ioremap(i32 %64, i64 %65)
  %67 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %68 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %67, i32 0, i32 6
  store i8* %66, i8** %68, align 8
  %69 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %70 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %69, i32 0, i32 6
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %83, label %73

73:                                               ; preds = %60
  %74 = load i32, i32* @ql_log_fatal, align 4
  %75 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %76 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %79 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @pci_name(i32 %80)
  %82 = call i32 (i32, i32, i32, i8*, ...) @ql_log_pci(i32 %74, i32 %77, i32 282, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  br label %219

83:                                               ; preds = %60
  %84 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %85 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %84, i32 0, i32 1
  store i32 1, i32* %85, align 4
  %86 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %87 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %89 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @pci_resource_start(i32 %90, i32 4)
  %92 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %93 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @pci_resource_len(i32 %94, i32 4)
  %96 = call i8* @ioremap(i32 %91, i64 %95)
  %97 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %98 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %97, i32 0, i32 5
  store i8* %96, i8** %98, align 8
  %99 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %100 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %99, i32 0, i32 5
  %101 = load i8*, i8** %100, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %109, label %103

103:                                              ; preds = %83
  %104 = load i32, i32* @ql_log_fatal, align 4
  %105 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %106 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i32, i32, i32, i8*, ...) @ql_log_pci(i32 %104, i32 %107, i32 285, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %204

109:                                              ; preds = %83
  %110 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %111 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @pci_resource_start(i32 %112, i32 2)
  %114 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %115 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @pci_resource_len(i32 %116, i32 2)
  %118 = call i8* @ioremap(i32 %113, i64 %117)
  %119 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %120 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %119, i32 0, i32 4
  store i8* %118, i8** %120, align 8
  %121 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %122 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %121, i32 0, i32 4
  %123 = load i8*, i8** %122, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %197

125:                                              ; preds = %109
  %126 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %127 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @QLA_83XX_PCI_MSIX_CONTROL, align 4
  %130 = call i32 @pci_read_config_word(i32 %128, i32 %129, i32* %4)
  %131 = load i32, i32* %4, align 4
  %132 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %133 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load i64, i64* @ql2xmultique_tag, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %158

136:                                              ; preds = %125
  %137 = call i32 (...) @num_online_cpus()
  store i32 %137, i32* %5, align 4
  %138 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %139 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = sub nsw i32 %140, 1
  %142 = load i32, i32* %5, align 4
  %143 = icmp sgt i32 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %136
  %145 = load i32, i32* %5, align 4
  %146 = add nsw i32 %145, 1
  br label %152

147:                                              ; preds = %136
  %148 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %149 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = sub nsw i32 %150, 1
  br label %152

152:                                              ; preds = %147, %144
  %153 = phi i32 [ %146, %144 ], [ %151, %147 ]
  %154 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %155 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  %156 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %157 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %156, i32 0, i32 0
  store i32 2, i32* %157, align 8
  br label %190

158:                                              ; preds = %125
  %159 = load i32, i32* @ql2xmaxqueues, align 4
  %160 = icmp sgt i32 %159, 1
  br i1 %160, label %161, label %189

161:                                              ; preds = %158
  %162 = load i32, i32* @ql2xmaxqueues, align 4
  %163 = load i32, i32* @QLA_MQ_SIZE, align 4
  %164 = icmp sgt i32 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  %166 = load i32, i32* @QLA_MQ_SIZE, align 4
  br label %169

167:                                              ; preds = %161
  %168 = load i32, i32* @ql2xmaxqueues, align 4
  br label %169

169:                                              ; preds = %167, %165
  %170 = phi i32 [ %166, %165 ], [ %168, %167 ]
  %171 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %172 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  %173 = load i32, i32* @ql_dbg_multiq, align 4
  %174 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %175 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %178 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @ql_dbg_pci(i32 %173, i32 %176, i32 49164, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %179)
  %181 = load i32, i32* @ql_dbg_init, align 4
  %182 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %183 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %186 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @ql_dbg_pci(i32 %181, i32 %184, i32 283, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %187)
  br label %189

189:                                              ; preds = %169, %158
  br label %190

190:                                              ; preds = %189, %152
  %191 = load i32, i32* @ql_log_info, align 4
  %192 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %193 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %4, align 4
  %196 = call i32 (i32, i32, i32, i8*, ...) @ql_log_pci(i32 %191, i32 %194, i32 284, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %195)
  br label %203

197:                                              ; preds = %109
  %198 = load i32, i32* @ql_log_info, align 4
  %199 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %200 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = call i32 (i32, i32, i32, i8*, ...) @ql_log_pci(i32 %198, i32 %201, i32 286, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %203

203:                                              ; preds = %197, %190
  br label %204

204:                                              ; preds = %203, %103
  %205 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %206 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, 1
  %209 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %210 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %209, i32 0, i32 2
  store i32 %208, i32* %210, align 8
  %211 = load i32, i32* @ql_dbg_init, align 4
  %212 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %213 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %216 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @ql_dbg_pci(i32 %211, i32 %214, i32 287, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %217)
  store i32 0, i32* %2, align 4
  br label %222

219:                                              ; preds = %73, %50, %33, %15
  %220 = load i32, i32* @ENOMEM, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %2, align 4
  br label %222

222:                                              ; preds = %219, %204
  %223 = load i32, i32* %2, align 4
  ret i32 %223
}

declare dso_local i64 @pci_request_selected_regions(i32, i32, i32) #1

declare dso_local i32 @ql_log_pci(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @pci_name(i32) #1

declare dso_local i32 @pci_resource_flags(i32, i32) #1

declare dso_local i64 @pci_resource_len(i32, i32) #1

declare dso_local i8* @ioremap(i32, i64) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @ql_dbg_pci(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
