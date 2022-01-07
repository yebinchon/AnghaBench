; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_transform_ok.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_transform_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptocop_transform_init = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"transform_ok: Bad mode set for csum transform\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"transform_ok: non-zero keylength, %d, for a digest/csum algorithm\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"transform_ok: keylen %d invalid for DES\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"transform_ok: keylen %d invalid for 3DES\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"transform_ok: keylen %d invalid for AES\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"transform_ok: no such algorithm %d\0A\00", align 1
@cryptocop_cipher_mode_ecb = common dso_local global i32 0, align 4
@cryptocop_cipher_mode_cbc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cryptocop_transform_init*)* @transform_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transform_ok(%struct.cryptocop_transform_init* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cryptocop_transform_init*, align 8
  store %struct.cryptocop_transform_init* %0, %struct.cryptocop_transform_init** %3, align 8
  %4 = load %struct.cryptocop_transform_init*, %struct.cryptocop_transform_init** %3, align 8
  %5 = getelementptr inbounds %struct.cryptocop_transform_init, %struct.cryptocop_transform_init* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %85 [
    i32 135, label %7
    i32 132, label %18
    i32 133, label %18
    i32 131, label %18
    i32 134, label %32
    i32 137, label %46
    i32 136, label %60
    i32 128, label %84
  ]

7:                                                ; preds = %1
  %8 = load %struct.cryptocop_transform_init*, %struct.cryptocop_transform_init** %3, align 8
  %9 = getelementptr inbounds %struct.cryptocop_transform_init, %struct.cryptocop_transform_init* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %12 [
    i32 129, label %11
    i32 130, label %11
  ]

11:                                               ; preds = %7, %7
  br label %17

12:                                               ; preds = %7
  %13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @DEBUG_API(i32 %13)
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %115

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %1, %1, %1, %17
  %19 = load %struct.cryptocop_transform_init*, %struct.cryptocop_transform_init** %3, align 8
  %20 = getelementptr inbounds %struct.cryptocop_transform_init, %struct.cryptocop_transform_init* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.cryptocop_transform_init*, %struct.cryptocop_transform_init** %3, align 8
  %25 = getelementptr inbounds %struct.cryptocop_transform_init, %struct.cryptocop_transform_init* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = call i32 @DEBUG_API(i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %115

31:                                               ; preds = %18
  br label %93

32:                                               ; preds = %1
  %33 = load %struct.cryptocop_transform_init*, %struct.cryptocop_transform_init** %3, align 8
  %34 = getelementptr inbounds %struct.cryptocop_transform_init, %struct.cryptocop_transform_init* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 64
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.cryptocop_transform_init*, %struct.cryptocop_transform_init** %3, align 8
  %39 = getelementptr inbounds %struct.cryptocop_transform_init, %struct.cryptocop_transform_init* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = call i32 @DEBUG_API(i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %115

45:                                               ; preds = %32
  br label %93

46:                                               ; preds = %1
  %47 = load %struct.cryptocop_transform_init*, %struct.cryptocop_transform_init** %3, align 8
  %48 = getelementptr inbounds %struct.cryptocop_transform_init, %struct.cryptocop_transform_init* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 192
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.cryptocop_transform_init*, %struct.cryptocop_transform_init** %3, align 8
  %53 = getelementptr inbounds %struct.cryptocop_transform_init, %struct.cryptocop_transform_init* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = call i32 @DEBUG_API(i32 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %115

59:                                               ; preds = %46
  br label %93

60:                                               ; preds = %1
  %61 = load %struct.cryptocop_transform_init*, %struct.cryptocop_transform_init** %3, align 8
  %62 = getelementptr inbounds %struct.cryptocop_transform_init, %struct.cryptocop_transform_init* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 128
  br i1 %64, label %65, label %83

65:                                               ; preds = %60
  %66 = load %struct.cryptocop_transform_init*, %struct.cryptocop_transform_init** %3, align 8
  %67 = getelementptr inbounds %struct.cryptocop_transform_init, %struct.cryptocop_transform_init* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 192
  br i1 %69, label %70, label %83

70:                                               ; preds = %65
  %71 = load %struct.cryptocop_transform_init*, %struct.cryptocop_transform_init** %3, align 8
  %72 = getelementptr inbounds %struct.cryptocop_transform_init, %struct.cryptocop_transform_init* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 256
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load %struct.cryptocop_transform_init*, %struct.cryptocop_transform_init** %3, align 8
  %77 = getelementptr inbounds %struct.cryptocop_transform_init, %struct.cryptocop_transform_init* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  %80 = call i32 @DEBUG_API(i32 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %115

83:                                               ; preds = %70, %65, %60
  br label %93

84:                                               ; preds = %1
  br label %85

85:                                               ; preds = %1, %84
  %86 = load %struct.cryptocop_transform_init*, %struct.cryptocop_transform_init** %3, align 8
  %87 = getelementptr inbounds %struct.cryptocop_transform_init, %struct.cryptocop_transform_init* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %88)
  %90 = call i32 @DEBUG_API(i32 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %115

93:                                               ; preds = %83, %59, %45, %31
  %94 = load %struct.cryptocop_transform_init*, %struct.cryptocop_transform_init** %3, align 8
  %95 = getelementptr inbounds %struct.cryptocop_transform_init, %struct.cryptocop_transform_init* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  switch i32 %96, label %113 [
    i32 134, label %97
    i32 137, label %97
    i32 136, label %97
  ]

97:                                               ; preds = %93, %93, %93
  %98 = load %struct.cryptocop_transform_init*, %struct.cryptocop_transform_init** %3, align 8
  %99 = getelementptr inbounds %struct.cryptocop_transform_init, %struct.cryptocop_transform_init* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @cryptocop_cipher_mode_ecb, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %97
  %104 = load %struct.cryptocop_transform_init*, %struct.cryptocop_transform_init** %3, align 8
  %105 = getelementptr inbounds %struct.cryptocop_transform_init, %struct.cryptocop_transform_init* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @cryptocop_cipher_mode_cbc, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %115

112:                                              ; preds = %103, %97
  br label %113

113:                                              ; preds = %93, %112
  br label %114

114:                                              ; preds = %113
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %114, %109, %85, %75, %51, %37, %23, %12
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @DEBUG_API(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
