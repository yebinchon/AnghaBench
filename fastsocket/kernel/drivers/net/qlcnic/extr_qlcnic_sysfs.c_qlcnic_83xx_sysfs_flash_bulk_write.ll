; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sysfs.c_qlcnic_83xx_sysfs_flash_bulk_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sysfs.c_qlcnic_83xx_sysfs_flash_bulk_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@QLC_83XX_FLASH_WRITE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, i8*, i32, i64)* @qlcnic_83xx_sysfs_flash_bulk_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_83xx_sysfs_flash_bulk_write(%struct.qlcnic_adapter* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kcalloc(i64 %15, i32 1, i32 %16)
  store i8* %17, i8** %13, align 8
  %18 = load i8*, i8** %13, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %156

23:                                               ; preds = %4
  %24 = load i8*, i8** %13, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @memcpy(i8* %24, i8* %25, i64 %26)
  %28 = load i8*, i8** %13, align 8
  store i8* %28, i8** %14, align 8
  %29 = load i64, i64* %9, align 8
  %30 = udiv i64 %29, 4
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %12, align 4
  %32 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %33 = call i64 @qlcnic_83xx_lock_flash(%struct.qlcnic_adapter* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %23
  %36 = load i8*, i8** %13, align 8
  %37 = call i32 @kfree(i8* %36)
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %156

40:                                               ; preds = %23
  %41 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %42 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %48 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %40
  %52 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %53 = call i32 @qlcnic_83xx_enable_flash_write(%struct.qlcnic_adapter* %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i8*, i8** %13, align 8
  %58 = call i32 @kfree(i8* %57)
  %59 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %60 = call i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter* %59)
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %156

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63, %40
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %124, %64
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @QLC_83XX_FLASH_WRITE_MAX, align 4
  %69 = sdiv i32 %67, %68
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %127

71:                                               ; preds = %65
  %72 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i8*, i8** %14, align 8
  %75 = bitcast i8* %74 to i32*
  %76 = load i32, i32* @QLC_83XX_FLASH_WRITE_MAX, align 4
  %77 = call i32 @qlcnic_83xx_flash_bulk_write(%struct.qlcnic_adapter* %72, i32 %73, i32* %75, i32 %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %111

80:                                               ; preds = %71
  %81 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %82 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %88 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %80
  %92 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %93 = call i32 @qlcnic_83xx_disable_flash_write(%struct.qlcnic_adapter* %92)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load i8*, i8** %13, align 8
  %98 = call i32 @kfree(i8* %97)
  %99 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %100 = call i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter* %99)
  %101 = load i32, i32* @EIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %5, align 4
  br label %156

103:                                              ; preds = %91
  br label %104

104:                                              ; preds = %103, %80
  %105 = load i8*, i8** %13, align 8
  %106 = call i32 @kfree(i8* %105)
  %107 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %108 = call i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter* %107)
  %109 = load i32, i32* @EIO, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %5, align 4
  br label %156

111:                                              ; preds = %71
  %112 = load i8*, i8** %14, align 8
  %113 = load i32, i32* @QLC_83XX_FLASH_WRITE_MAX, align 4
  %114 = sext i32 %113 to i64
  %115 = mul i64 4, %114
  %116 = getelementptr inbounds i8, i8* %112, i64 %115
  store i8* %116, i8** %14, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = load i32, i32* @QLC_83XX_FLASH_WRITE_MAX, align 4
  %120 = sext i32 %119 to i64
  %121 = mul i64 4, %120
  %122 = add i64 %118, %121
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %111
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %65

127:                                              ; preds = %65
  %128 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %129 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %128, i32 0, i32 1
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %135 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %133, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %127
  %139 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %140 = call i32 @qlcnic_83xx_disable_flash_write(%struct.qlcnic_adapter* %139)
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %138
  %144 = load i8*, i8** %13, align 8
  %145 = call i32 @kfree(i8* %144)
  %146 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %147 = call i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter* %146)
  %148 = load i32, i32* @EIO, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %5, align 4
  br label %156

150:                                              ; preds = %138
  br label %151

151:                                              ; preds = %150, %127
  %152 = load i8*, i8** %13, align 8
  %153 = call i32 @kfree(i8* %152)
  %154 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %155 = call i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter* %154)
  store i32 0, i32* %5, align 4
  br label %156

156:                                              ; preds = %151, %143, %104, %96, %56, %35, %20
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local i8* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @qlcnic_83xx_lock_flash(%struct.qlcnic_adapter*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @qlcnic_83xx_enable_flash_write(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_flash_bulk_write(%struct.qlcnic_adapter*, i32, i32*, i32) #1

declare dso_local i32 @qlcnic_83xx_disable_flash_write(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
