; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_delete_chap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_delete_chap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.scsi_qla_host = type { i32, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ql4_chap_table = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_CHAP_ENTRIES_40XX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"CHAP entry %d is in use, cannot delete from flash\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@FLASH_CHAP_OFFSET = common dso_local global i32 0, align 4
@FLASH_RAW_ACCESS_ADDR = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Chap Cookie: x%x\0A\00", align 1
@CHAP_VALID_COOKIE = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"No valid chap entry found\0A\00", align 1
@FLASH_OPT_RMW_COMMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, i32)* @qla4xxx_delete_chap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_delete_chap(%struct.Scsi_Host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_qla_host*, align 8
  %7 = alloca %struct.ql4_chap_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %14 = call %struct.scsi_qla_host* @to_qla_host(%struct.Scsi_Host* %13)
  store %struct.scsi_qla_host* %14, %struct.scsi_qla_host** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %16 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.ql4_chap_table* @dma_pool_alloc(i32 %17, i32 %18, i32* %8)
  store %struct.ql4_chap_table* %19, %struct.ql4_chap_table** %7, align 8
  %20 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %7, align 8
  %21 = icmp eq %struct.ql4_chap_table* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %186

25:                                               ; preds = %2
  %26 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %7, align 8
  %27 = call i32 @memset(%struct.ql4_chap_table* %26, i32 0, i32 4)
  %28 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %29 = call i64 @is_qla80XX(%struct.scsi_qla_host* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %33 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sdiv i32 %35, 2
  %37 = sext i32 %36 to i64
  %38 = udiv i64 %37, 4
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %9, align 4
  br label %42

40:                                               ; preds = %25
  %41 = load i32, i32* @MAX_CHAP_ENTRIES_40XX, align 4
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %40, %31
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %12, align 4
  br label %178

49:                                               ; preds = %42
  %50 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @qla4xxx_is_chap_active(%struct.Scsi_Host* %50, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load i32, i32* @KERN_INFO, align 4
  %57 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %56, %struct.scsi_qla_host* %57, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %12, align 4
  br label %178

62:                                               ; preds = %49
  store i32 4, i32* %11, align 4
  %63 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %64 = call i64 @is_qla40XX(%struct.scsi_qla_host* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i32, i32* @FLASH_CHAP_OFFSET, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %11, align 4
  %70 = mul nsw i32 %68, %69
  %71 = or i32 %67, %70
  store i32 %71, i32* %10, align 4
  br label %98

72:                                               ; preds = %62
  %73 = load i32, i32* @FLASH_RAW_ACCESS_ADDR, align 4
  %74 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %75 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 2
  %79 = add nsw i32 %73, %78
  store i32 %79, i32* %10, align 4
  %80 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %81 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %92

84:                                               ; preds = %72
  %85 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %86 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sdiv i32 %88, 2
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %84, %72
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %11, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %92, %66
  %99 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @qla4xxx_get_flash(%struct.scsi_qla_host* %99, i32 %100, i32 %101, i32 %102)
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @QLA_SUCCESS, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %98
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %12, align 4
  br label %178

110:                                              ; preds = %98
  %111 = load i32, i32* @KERN_INFO, align 4
  %112 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %113 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %7, align 8
  %114 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @__le16_to_cpu(i32 %115)
  %117 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %111, %struct.scsi_qla_host* %112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = call i32 @DEBUG2(i32 %117)
  %119 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %7, align 8
  %120 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @__le16_to_cpu(i32 %121)
  %123 = load i32, i32* @CHAP_VALID_COOKIE, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %110
  %126 = load i32, i32* @KERN_ERR, align 4
  %127 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %128 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %126, %struct.scsi_qla_host* %127, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %178

129:                                              ; preds = %110
  %130 = call i32 @__constant_cpu_to_le16(i32 65535)
  %131 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %7, align 8
  %132 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* @FLASH_CHAP_OFFSET, align 4
  %134 = sext i32 %133 to i64
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = mul i64 %136, 4
  %138 = or i64 %134, %137
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %10, align 4
  %140 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* @FLASH_OPT_RMW_COMMIT, align 4
  %145 = call i32 @qla4xxx_set_flash(%struct.scsi_qla_host* %140, i32 %141, i32 %142, i32 %143, i32 %144)
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* @QLA_SUCCESS, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %170

149:                                              ; preds = %129
  %150 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %151 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %170

154:                                              ; preds = %149
  %155 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %156 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %155, i32 0, i32 2
  %157 = call i32 @mutex_lock(i32* %156)
  %158 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %159 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = inttoptr i64 %160 to %struct.ql4_chap_table*
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %161, i64 %163
  %165 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %7, align 8
  %166 = call i32 @memcpy(%struct.ql4_chap_table* %164, %struct.ql4_chap_table* %165, i32 4)
  %167 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %168 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %167, i32 0, i32 2
  %169 = call i32 @mutex_unlock(i32* %168)
  br label %170

170:                                              ; preds = %154, %149, %129
  %171 = load i32, i32* %12, align 4
  %172 = load i32, i32* @QLA_SUCCESS, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  %175 = load i32, i32* @EINVAL, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %12, align 4
  br label %177

177:                                              ; preds = %174, %170
  br label %178

178:                                              ; preds = %177, %125, %107, %55, %46
  %179 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %180 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %7, align 8
  %183 = load i32, i32* %8, align 4
  %184 = call i32 @dma_pool_free(i32 %181, %struct.ql4_chap_table* %182, i32 %183)
  %185 = load i32, i32* %12, align 4
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %178, %22
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local %struct.scsi_qla_host* @to_qla_host(%struct.Scsi_Host*) #1

declare dso_local %struct.ql4_chap_table* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.ql4_chap_table*, i32, i32) #1

declare dso_local i64 @is_qla80XX(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_is_chap_active(%struct.Scsi_Host*, i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*, ...) #1

declare dso_local i64 @is_qla40XX(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_get_flash(%struct.scsi_qla_host*, i32, i32, i32) #1

declare dso_local i32 @DEBUG2(i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @__constant_cpu_to_le16(i32) #1

declare dso_local i32 @qla4xxx_set_flash(%struct.scsi_qla_host*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(%struct.ql4_chap_table*, %struct.ql4_chap_table*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dma_pool_free(i32, %struct.ql4_chap_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
