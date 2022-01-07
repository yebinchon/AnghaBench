; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_iospace_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_iospace_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32, i32, i32, i32, i32, i32, i8*, i64 }

@QLA2XXX_DRIVER_NAME = common dso_local global i32 0, align 4
@ql_log_fatal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Failed to reserve PIO/MMIO regions (%s), aborting.\0A\00", align 1
@IORESOURCE_IO = common dso_local global i32 0, align 4
@MIN_IOBASE_LEN = common dso_local global i64 0, align 8
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Invalid pci I/O region size (%s).\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Region #0 no a PIO resource (%s).\0A\00", align 1
@ql_dbg_init = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"PIO address=%llu.\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"Region #1 not an MMIO resource (%s), aborting.\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Invalid PCI mem region size (%s), aborting.\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Cannot remap MMIO (%s), aborting.\0A\00", align 1
@ql2xmaxqueues = common dso_local global i32 0, align 4
@ql2xmultique_tag = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"MQIO Base=%p.\0A\00", align 1
@QLA_PCI_MSIX_CONTROL = common dso_local global i32 0, align 4
@QLA_MQ_SIZE = common dso_local global i32 0, align 4
@ql_dbg_multiq = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"QoS mode set, max no of request queues:%d.\0A\00", align 1
@ql_log_info = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"MSI-X vector count: %d.\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"BAR 3 not enabled.\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"MSIX Count:%d.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qla_hw_data*)* @qla2x00_iospace_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_iospace_config(%struct.qla_hw_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qla_hw_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %3, align 8
  %7 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %8 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %11 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @QLA2XXX_DRIVER_NAME, align 4
  %14 = call i64 @pci_request_selected_regions(i32 %9, i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load i32, i32* @ql_log_fatal, align 4
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %19 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %22 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pci_name(i32 %23)
  %25 = call i32 (i32, i32, i32, i8*, ...) @ql_log_pci(i32 %17, i32 %20, i32 17, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %291

26:                                               ; preds = %1
  %27 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %28 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %85

33:                                               ; preds = %26
  %34 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %35 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @pci_resource_start(i32 %36, i32 0)
  store i64 %37, i64* %4, align 8
  %38 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %39 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pci_resource_flags(i32 %40, i32 0)
  %42 = load i32, i32* @IORESOURCE_IO, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %33
  %46 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %47 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @pci_resource_len(i32 %48, i32 0)
  %50 = load i64, i64* @MIN_IOBASE_LEN, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %45
  %53 = load i32, i32* @ql_log_warn, align 4
  %54 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %55 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %58 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @pci_name(i32 %59)
  %61 = call i32 (i32, i32, i32, i8*, ...) @ql_log_pci(i32 %53, i32 %56, i32 18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  store i64 0, i64* %4, align 8
  br label %62

62:                                               ; preds = %52, %45
  br label %73

63:                                               ; preds = %33
  %64 = load i32, i32* @ql_log_warn, align 4
  %65 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %66 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %69 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @pci_name(i32 %70)
  %72 = call i32 (i32, i32, i32, i8*, ...) @ql_log_pci(i32 %64, i32 %67, i32 19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  store i64 0, i64* %4, align 8
  br label %73

73:                                               ; preds = %63, %62
  %74 = load i64, i64* %4, align 8
  %75 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %76 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %75, i32 0, i32 7
  store i64 %74, i64* %76, align 8
  %77 = load i32, i32* @ql_dbg_init, align 4
  %78 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %79 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %82 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %81, i32 0, i32 7
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @ql_dbg_pci(i32 %77, i32 %80, i32 20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 %83)
  br label %85

85:                                               ; preds = %73, %32
  %86 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %87 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @pci_resource_flags(i32 %88, i32 1)
  %90 = load i32, i32* @IORESOURCE_MEM, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %85
  %94 = load i32, i32* @ql_log_fatal, align 4
  %95 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %96 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %99 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @pci_name(i32 %100)
  %102 = call i32 (i32, i32, i32, i8*, ...) @ql_log_pci(i32 %94, i32 %97, i32 21, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  br label %291

103:                                              ; preds = %85
  %104 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %105 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @pci_resource_len(i32 %106, i32 1)
  %108 = load i64, i64* @MIN_IOBASE_LEN, align 8
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %103
  %111 = load i32, i32* @ql_log_fatal, align 4
  %112 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %113 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %116 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @pci_name(i32 %117)
  %119 = call i32 (i32, i32, i32, i8*, ...) @ql_log_pci(i32 %111, i32 %114, i32 22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %118)
  br label %291

120:                                              ; preds = %103
  %121 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %122 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @pci_resource_start(i32 %123, i32 1)
  %125 = load i64, i64* @MIN_IOBASE_LEN, align 8
  %126 = call i8* @ioremap(i64 %124, i64 %125)
  %127 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %128 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %127, i32 0, i32 6
  store i8* %126, i8** %128, align 8
  %129 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %130 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %129, i32 0, i32 6
  %131 = load i8*, i8** %130, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %143, label %133

133:                                              ; preds = %120
  %134 = load i32, i32* @ql_log_fatal, align 4
  %135 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %136 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %139 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @pci_name(i32 %140)
  %142 = call i32 (i32, i32, i32, i8*, ...) @ql_log_pci(i32 %134, i32 %137, i32 23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %141)
  br label %291

143:                                              ; preds = %120
  %144 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %145 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %144, i32 0, i32 2
  store i32 1, i32* %145, align 8
  %146 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %147 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %146, i32 0, i32 1
  store i32 1, i32* %147, align 4
  %148 = load i32, i32* @ql2xmaxqueues, align 4
  %149 = icmp sle i32 %148, 1
  br i1 %149, label %150, label %153

150:                                              ; preds = %143
  %151 = load i64, i64* @ql2xmultique_tag, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %167

153:                                              ; preds = %150, %143
  %154 = load i32, i32* @ql2xmaxqueues, align 4
  %155 = icmp sgt i32 %154, 1
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i64, i64* @ql2xmultique_tag, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %167, label %159

159:                                              ; preds = %156, %153
  %160 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %161 = call i32 @IS_QLA25XX(%struct.qla_hw_data* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %159
  %164 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %165 = call i32 @IS_QLA81XX(%struct.qla_hw_data* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %163, %156, %150
  br label %275

168:                                              ; preds = %163, %159
  %169 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %170 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = call i64 @pci_resource_start(i32 %171, i32 3)
  %173 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %174 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @pci_resource_len(i32 %175, i32 3)
  %177 = call i8* @ioremap(i64 %172, i64 %176)
  %178 = ptrtoint i8* %177 to i32
  %179 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %180 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 4
  %181 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %182 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %268

185:                                              ; preds = %168
  %186 = load i32, i32* @ql_dbg_init, align 4
  %187 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %188 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %191 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = sext i32 %192 to i64
  %194 = call i32 @ql_dbg_pci(i32 %186, i32 %189, i32 24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i64 %193)
  %195 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %196 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @QLA_PCI_MSIX_CONTROL, align 4
  %199 = call i32 @pci_read_config_word(i32 %197, i32 %198, i32* %5)
  %200 = load i32, i32* %5, align 4
  %201 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %202 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %201, i32 0, i32 4
  store i32 %200, i32* %202, align 8
  %203 = load i64, i64* @ql2xmultique_tag, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %227

205:                                              ; preds = %185
  %206 = call i32 (...) @num_online_cpus()
  store i32 %206, i32* %6, align 4
  %207 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %208 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = sub nsw i32 %209, 1
  %211 = load i32, i32* %6, align 4
  %212 = icmp sgt i32 %210, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %205
  %214 = load i32, i32* %6, align 4
  %215 = add nsw i32 %214, 1
  br label %221

216:                                              ; preds = %205
  %217 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %218 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = sub nsw i32 %219, 1
  br label %221

221:                                              ; preds = %216, %213
  %222 = phi i32 [ %215, %213 ], [ %220, %216 ]
  %223 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %224 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %223, i32 0, i32 2
  store i32 %222, i32* %224, align 8
  %225 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %226 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %225, i32 0, i32 1
  store i32 2, i32* %226, align 4
  br label %261

227:                                              ; preds = %185
  %228 = load i32, i32* @ql2xmaxqueues, align 4
  %229 = icmp sgt i32 %228, 1
  br i1 %229, label %230, label %260

230:                                              ; preds = %227
  %231 = load i32, i32* @ql2xmaxqueues, align 4
  %232 = load i32, i32* @QLA_MQ_SIZE, align 4
  %233 = icmp sgt i32 %231, %232
  br i1 %233, label %234, label %236

234:                                              ; preds = %230
  %235 = load i32, i32* @QLA_MQ_SIZE, align 4
  br label %238

236:                                              ; preds = %230
  %237 = load i32, i32* @ql2xmaxqueues, align 4
  br label %238

238:                                              ; preds = %236, %234
  %239 = phi i32 [ %235, %234 ], [ %237, %236 ]
  %240 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %241 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %240, i32 0, i32 1
  store i32 %239, i32* %241, align 4
  %242 = load i32, i32* @ql_dbg_multiq, align 4
  %243 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %244 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %243, i32 0, i32 5
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %247 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = sext i32 %248 to i64
  %250 = call i32 @ql_dbg_pci(i32 %242, i32 %245, i32 49160, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i64 %249)
  %251 = load i32, i32* @ql_dbg_init, align 4
  %252 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %253 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %252, i32 0, i32 5
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %256 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = sext i32 %257 to i64
  %259 = call i32 @ql_dbg_pci(i32 %251, i32 %254, i32 25, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i64 %258)
  br label %260

260:                                              ; preds = %238, %227
  br label %261

261:                                              ; preds = %260, %221
  %262 = load i32, i32* @ql_log_info, align 4
  %263 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %264 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %5, align 4
  %267 = call i32 (i32, i32, i32, i8*, ...) @ql_log_pci(i32 %262, i32 %265, i32 26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %266)
  br label %274

268:                                              ; preds = %168
  %269 = load i32, i32* @ql_log_info, align 4
  %270 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %271 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %270, i32 0, i32 5
  %272 = load i32, i32* %271, align 4
  %273 = call i32 (i32, i32, i32, i8*, ...) @ql_log_pci(i32 %269, i32 %272, i32 27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  br label %274

274:                                              ; preds = %268, %261
  br label %275

275:                                              ; preds = %274, %167
  %276 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %277 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = add nsw i32 %278, 1
  %280 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %281 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %280, i32 0, i32 4
  store i32 %279, i32* %281, align 8
  %282 = load i32, i32* @ql_dbg_init, align 4
  %283 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %284 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %283, i32 0, i32 5
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %287 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %286, i32 0, i32 4
  %288 = load i32, i32* %287, align 8
  %289 = sext i32 %288 to i64
  %290 = call i32 @ql_dbg_pci(i32 %282, i32 %285, i32 28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i64 %289)
  store i32 0, i32* %2, align 4
  br label %294

291:                                              ; preds = %133, %110, %93, %16
  %292 = load i32, i32* @ENOMEM, align 4
  %293 = sub nsw i32 0, %292
  store i32 %293, i32* %2, align 4
  br label %294

294:                                              ; preds = %291, %275
  %295 = load i32, i32* %2, align 4
  ret i32 %295
}

declare dso_local i64 @pci_request_selected_regions(i32, i32, i32) #1

declare dso_local i32 @ql_log_pci(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @pci_name(i32) #1

declare dso_local i64 @pci_resource_start(i32, i32) #1

declare dso_local i32 @pci_resource_flags(i32, i32) #1

declare dso_local i64 @pci_resource_len(i32, i32) #1

declare dso_local i32 @ql_dbg_pci(i32, i32, i32, i8*, i64) #1

declare dso_local i8* @ioremap(i64, i64) #1

declare dso_local i32 @IS_QLA25XX(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA81XX(%struct.qla_hw_data*) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @num_online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
