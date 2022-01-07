; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sysfs.c_qlcnic_83xx_sysfs_flash_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sysfs.c_qlcnic_83xx_sysfs_flash_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, i8*, i32, i64)* @qlcnic_83xx_sysfs_flash_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_83xx_sysfs_flash_write(%struct.qlcnic_adapter* %0, i8* %1, i32 %2, i64 %3) #0 {
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
  br label %147

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
  br label %147

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
  br label %147

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63, %40
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %115, %64
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %118

69:                                               ; preds = %65
  %70 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i8*, i8** %14, align 8
  %73 = bitcast i8* %72 to i32*
  %74 = call i32 @qlcnic_83xx_flash_write32(%struct.qlcnic_adapter* %70, i32 %71, i32* %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %108

77:                                               ; preds = %69
  %78 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %79 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %85 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %83, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %77
  %89 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %90 = call i32 @qlcnic_83xx_disable_flash_write(%struct.qlcnic_adapter* %89)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load i8*, i8** %13, align 8
  %95 = call i32 @kfree(i8* %94)
  %96 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %97 = call i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter* %96)
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %5, align 4
  br label %147

100:                                              ; preds = %88
  br label %101

101:                                              ; preds = %100, %77
  %102 = load i8*, i8** %13, align 8
  %103 = call i32 @kfree(i8* %102)
  %104 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %105 = call i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter* %104)
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %5, align 4
  br label %147

108:                                              ; preds = %69
  %109 = load i8*, i8** %14, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 4
  store i8* %110, i8** %14, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = add i64 %112, 4
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %108
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %65

118:                                              ; preds = %65
  %119 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %120 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %119, i32 0, i32 1
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %126 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %124, %127
  br i1 %128, label %129, label %142

129:                                              ; preds = %118
  %130 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %131 = call i32 @qlcnic_83xx_disable_flash_write(%struct.qlcnic_adapter* %130)
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %11, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %129
  %135 = load i8*, i8** %13, align 8
  %136 = call i32 @kfree(i8* %135)
  %137 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %138 = call i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter* %137)
  %139 = load i32, i32* @EIO, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %5, align 4
  br label %147

141:                                              ; preds = %129
  br label %142

142:                                              ; preds = %141, %118
  %143 = load i8*, i8** %13, align 8
  %144 = call i32 @kfree(i8* %143)
  %145 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %146 = call i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter* %145)
  store i32 0, i32* %5, align 4
  br label %147

147:                                              ; preds = %142, %134, %101, %93, %56, %35, %20
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i8* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @qlcnic_83xx_lock_flash(%struct.qlcnic_adapter*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @qlcnic_83xx_enable_flash_write(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_flash_write32(%struct.qlcnic_adapter*, i32, i32*) #1

declare dso_local i32 @qlcnic_83xx_disable_flash_write(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
