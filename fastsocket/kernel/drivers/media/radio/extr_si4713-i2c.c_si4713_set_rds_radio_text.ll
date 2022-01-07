; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_set_rds_radio_text.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_set_rds_radio_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si4713_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@RDS_BLOCK_CLEAR = common dso_local global i32 0, align 4
@RDS_RADIOTEXT_INDEX_MAX = common dso_local global i32 0, align 4
@RDS_RADIOTEXT_BLK_SIZE = common dso_local global i32 0, align 4
@RDS_CARRIAGE_RETURN = common dso_local global i8 0, align 1
@RDS_BLOCK_LOAD = common dso_local global i32 0, align 4
@RDS_RADIOTEXT_2A = common dso_local global i8 0, align 1
@MAX_RDS_RADIO_TEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si4713_device*, i8*)* @si4713_set_rds_radio_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si4713_set_rds_radio_text(%struct.si4713_device* %0, i8* %1) #0 {
  %3 = alloca %struct.si4713_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.si4713_device* %0, %struct.si4713_device** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %12 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %15 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %126

19:                                               ; preds = %2
  %20 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %21 = load i32, i32* @RDS_BLOCK_CLEAR, align 4
  %22 = call i32 @si4713_tx_rds_buff(%struct.si4713_device* %20, i32 %21, i32 0, i32 0, i32 0, i64* %10)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %134

26:                                               ; preds = %19
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %126

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %122, %31
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @RDS_RADIOTEXT_INDEX_MAX, align 4
  %35 = load i32, i32* @RDS_RADIOTEXT_BLK_SIZE, align 4
  %36 = mul nsw i32 %34, %35
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %77

38:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %73, %38
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @RDS_RADIOTEXT_BLK_SIZE, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %76

43:                                               ; preds = %39
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %44, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %43
  %53 = load i8*, i8** %4, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %53, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = load i8, i8* @RDS_CARRIAGE_RETURN, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %52, %43
  %65 = load i8, i8* @RDS_CARRIAGE_RETURN, align 1
  %66 = load i8*, i8** %4, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %66, i64 %70
  store i8 %65, i8* %71, align 1
  store i32 1, i32* %9, align 4
  br label %76

72:                                               ; preds = %52
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %39

76:                                               ; preds = %64, %39
  br label %77

77:                                               ; preds = %76, %32
  %78 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %79 = load i32, i32* @RDS_BLOCK_LOAD, align 4
  %80 = load i8, i8* @RDS_RADIOTEXT_2A, align 1
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  %83 = trunc i32 %81 to i8
  %84 = call i32 @compose_u16(i8 signext %80, i8 signext %83)
  %85 = load i8*, i8** %4, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = load i8*, i8** %4, align 8
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %90, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = call i32 @compose_u16(i8 signext %89, i8 signext %95)
  %97 = load i8*, i8** %4, align 8
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 2
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = load i8*, i8** %4, align 8
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 3
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = call i32 @compose_u16(i8 signext %102, i8 signext %108)
  %110 = call i32 @si4713_tx_rds_buff(%struct.si4713_device* %78, i32 %79, i32 %84, i32 %96, i32 %109, i64* %10)
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %77
  br label %134

114:                                              ; preds = %77
  %115 = load i32, i32* @RDS_RADIOTEXT_BLK_SIZE, align 4
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %125

121:                                              ; preds = %114
  br label %122

122:                                              ; preds = %121
  %123 = load i64, i64* %10, align 8
  %124 = icmp sgt i64 %123, 0
  br i1 %124, label %32, label %125

125:                                              ; preds = %122, %120
  br label %126

126:                                              ; preds = %125, %30, %18
  %127 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %128 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i8*, i8** %4, align 8
  %132 = load i32, i32* @MAX_RDS_RADIO_TEXT, align 4
  %133 = call i32 @strncpy(i32 %130, i8* %131, i32 %132)
  br label %134

134:                                              ; preds = %126, %113, %25
  %135 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %136 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %135, i32 0, i32 0
  %137 = call i32 @mutex_unlock(i32* %136)
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @si4713_tx_rds_buff(%struct.si4713_device*, i32, i32, i32, i32, i64*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @compose_u16(i8 signext, i8 signext) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
