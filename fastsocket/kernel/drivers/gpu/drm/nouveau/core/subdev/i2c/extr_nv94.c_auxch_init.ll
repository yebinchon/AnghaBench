; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/i2c/extr_nv94.c_auxch_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/i2c/extr_nv94.c_auxch_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_i2c = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"begin idle timeout 0x%08x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"magic wait 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_i2c*, i32)* @auxch_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auxch_init(%struct.nouveau_i2c* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nouveau_i2c*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nouveau_i2c* %0, %struct.nouveau_i2c** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i32 1048576, i32* %7, align 4
  store i32 16777216, i32* %8, align 4
  store i32 1000, i32* %10, align 4
  br label %11

11:                                               ; preds = %27, %2
  %12 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = mul nsw i32 %13, 80
  %15 = add nsw i32 58596, %14
  %16 = call i32 @nv_rd32(%struct.nouveau_i2c* %12, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = call i32 @udelay(i32 1)
  %18 = load i32, i32* %10, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %10, align 4
  %20 = icmp ne i32 %18, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %11
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @AUX_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %61

26:                                               ; preds = %11
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, 50397184
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %11, label %31

31:                                               ; preds = %27
  %32 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = mul nsw i32 %33, 80
  %35 = add nsw i32 58596, %34
  %36 = call i32 @nv_mask(%struct.nouveau_i2c* %32, i32 %35, i32 3145728, i32 1048576)
  store i32 1000, i32* %10, align 4
  br label %37

37:                                               ; preds = %56, %31
  %38 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = mul nsw i32 %39, 80
  %41 = add nsw i32 58596, %40
  %42 = call i32 @nv_rd32(%struct.nouveau_i2c* %38, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = call i32 @udelay(i32 1)
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %10, align 4
  %46 = icmp ne i32 %44, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @AUX_ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @auxch_fini(%struct.nouveau_i2c* %50, i32 %51)
  %53 = load i32, i32* @EBUSY, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %61

55:                                               ; preds = %37
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, 50331648
  %59 = icmp ne i32 %58, 16777216
  br i1 %59, label %37, label %60

60:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %47, %21
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @nv_rd32(%struct.nouveau_i2c*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @AUX_ERR(i8*, i32) #1

declare dso_local i32 @nv_mask(%struct.nouveau_i2c*, i32, i32, i32) #1

declare dso_local i32 @auxch_fini(%struct.nouveau_i2c*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
