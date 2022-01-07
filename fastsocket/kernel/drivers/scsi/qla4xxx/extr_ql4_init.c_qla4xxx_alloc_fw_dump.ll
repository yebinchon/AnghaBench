; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_init.c_qla4xxx_alloc_fw_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_init.c_qla4xxx_alloc_fw_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, i32, i32, i32, %struct.TYPE_2__*, i64, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.qla4_8xxx_minidump_template_hdr = type { i32, i32, i32, i64* }

@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Firmware dump previously allocated.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"scsi%ld: Failed to get template size\0A\00", align 1
@AF_82XX_FW_DUMPED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"scsi%ld: Failed to get minidump template\0A\00", align 1
@ql4xmdcapmask = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Minimum num of entries = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Dump template size  = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Selected Capture mask =0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Minidump Tempalate Size = 0x%x KB\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Total Minidump size = 0x%x KB\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla4xxx_alloc_fw_dump(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qla4_8xxx_minidump_template_hdr*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %10 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %11 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @KERN_WARNING, align 4
  %16 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %17 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %15, %struct.scsi_qla_host* %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %193

18:                                               ; preds = %1
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %20 = call i32 @qla4xxx_req_template_size(%struct.scsi_qla_host* %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @QLA_SUCCESS, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load i32, i32* @KERN_INFO, align 4
  %26 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %27 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %28 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %25, %struct.scsi_qla_host* %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %193

31:                                               ; preds = %18
  %32 = load i32, i32* @AF_82XX_FW_DUMPED, align 4
  %33 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %34 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %33, i32 0, i32 7
  %35 = call i32 @clear_bit(i32 %32, i32* %34)
  %36 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %37 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %36, i32 0, i32 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %41 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8* @dma_alloc_coherent(i32* %39, i32 %42, i32* %8, i32 %43)
  store i8* %44, i8** %7, align 8
  %45 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @qla4xxx_get_minidump_template(%struct.scsi_qla_host* %45, i32 %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @QLA_SUCCESS, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %31
  %52 = load i32, i32* @KERN_INFO, align 4
  %53 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %54 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %55 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %52, %struct.scsi_qla_host* %53, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %182

58:                                               ; preds = %31
  %59 = load i8*, i8** %7, align 8
  %60 = bitcast i8* %59 to %struct.qla4_8xxx_minidump_template_hdr*
  store %struct.qla4_8xxx_minidump_template_hdr* %60, %struct.qla4_8xxx_minidump_template_hdr** %9, align 8
  %61 = load %struct.qla4_8xxx_minidump_template_hdr*, %struct.qla4_8xxx_minidump_template_hdr** %9, align 8
  %62 = getelementptr inbounds %struct.qla4_8xxx_minidump_template_hdr, %struct.qla4_8xxx_minidump_template_hdr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* @ql4xmdcapmask, align 4
  %65 = icmp sge i32 %64, 3
  br i1 %65, label %66, label %73

66:                                               ; preds = %58
  %67 = load i32, i32* @ql4xmdcapmask, align 4
  %68 = icmp sle i32 %67, 127
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* @ql4xmdcapmask, align 4
  %71 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %72 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  br label %77

73:                                               ; preds = %66, %58
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %76 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %73, %69
  %78 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %79 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.qla4_8xxx_minidump_template_hdr*, %struct.qla4_8xxx_minidump_template_hdr** %9, align 8
  %82 = getelementptr inbounds %struct.qla4_8xxx_minidump_template_hdr, %struct.qla4_8xxx_minidump_template_hdr* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @KERN_INFO, align 4
  %84 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %85 = load %struct.qla4_8xxx_minidump_template_hdr*, %struct.qla4_8xxx_minidump_template_hdr** %9, align 8
  %86 = getelementptr inbounds %struct.qla4_8xxx_minidump_template_hdr, %struct.qla4_8xxx_minidump_template_hdr* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %83, %struct.scsi_qla_host* %84, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  %89 = call i32 @DEBUG2(i32 %88)
  %90 = load i32, i32* @KERN_INFO, align 4
  %91 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %92 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %93 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %90, %struct.scsi_qla_host* %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  %96 = call i32 @DEBUG2(i32 %95)
  %97 = load i32, i32* @KERN_INFO, align 4
  %98 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %99 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %100 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %97, %struct.scsi_qla_host* %98, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %101)
  %103 = call i32 @DEBUG2(i32 %102)
  store i32 2, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %104

104:                                              ; preds = %130, %77
  %105 = load i32, i32* %5, align 4
  %106 = and i32 %105, 255
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %135

108:                                              ; preds = %104
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %111 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = and i32 %109, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %108
  %116 = load %struct.qla4_8xxx_minidump_template_hdr*, %struct.qla4_8xxx_minidump_template_hdr** %9, align 8
  %117 = getelementptr inbounds %struct.qla4_8xxx_minidump_template_hdr, %struct.qla4_8xxx_minidump_template_hdr* %116, i32 0, i32 3
  %118 = load i64*, i64** %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %124 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %126, %122
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %124, align 4
  br label %129

129:                                              ; preds = %115, %108
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %5, align 4
  %132 = shl i32 %131, 1
  store i32 %132, i32* %5, align 4
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  br label %104

135:                                              ; preds = %104
  %136 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %137 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %140 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, %138
  store i32 %142, i32* %140, align 4
  %143 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %144 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @vmalloc(i32 %145)
  %147 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %148 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %147, i32 0, i32 5
  store i64 %146, i64* %148, align 8
  %149 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %150 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %149, i32 0, i32 5
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %135
  br label %182

154:                                              ; preds = %135
  %155 = load i32, i32* @KERN_INFO, align 4
  %156 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %157 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %158 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %155, %struct.scsi_qla_host* %156, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %159)
  %161 = call i32 @DEBUG2(i32 %160)
  %162 = load i32, i32* @KERN_INFO, align 4
  %163 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %164 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %165 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %162, %struct.scsi_qla_host* %163, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %166)
  %168 = call i32 @DEBUG2(i32 %167)
  %169 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %170 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %169, i32 0, i32 5
  %171 = load i64, i64* %170, align 8
  %172 = load i8*, i8** %7, align 8
  %173 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %174 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @memcpy(i64 %171, i8* %172, i32 %175)
  %177 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %178 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %177, i32 0, i32 5
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %181 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %180, i32 0, i32 6
  store i64 %179, i64* %181, align 8
  br label %182

182:                                              ; preds = %154, %153, %51
  %183 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %184 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %183, i32 0, i32 4
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 0
  %187 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %188 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i8*, i8** %7, align 8
  %191 = load i32, i32* %8, align 4
  %192 = call i32 @dma_free_coherent(i32* %186, i32 %189, i8* %190, i32 %191)
  br label %193

193:                                              ; preds = %182, %24, %14
  ret void
}

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*, ...) #1

declare dso_local i32 @qla4xxx_req_template_size(%struct.scsi_qla_host*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @qla4xxx_get_minidump_template(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @DEBUG2(i32) #1

declare dso_local i64 @vmalloc(i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
