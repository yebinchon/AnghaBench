; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_key_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_key_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i64 }

@B43_SHM_SHARED = common dso_local global i32 0, align 4
@B43_SHM_SH_KEYIDXBLOCK = common dso_local global i64 0, align 8
@B43_SEC_KEYSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32, i32, i32*)* @key_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_write(%struct.b43_wldev* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @b43_kidx_to_fw(%struct.b43_wldev* %13, i32 %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = shl i32 %16, 4
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %11, align 4
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %21 = load i32, i32* @B43_SHM_SHARED, align 4
  %22 = load i64, i64* @B43_SHM_SH_KEYIDXBLOCK, align 8
  %23 = load i32, i32* %12, align 4
  %24 = mul nsw i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %22, %25
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @b43_shm_write16(%struct.b43_wldev* %20, i32 %21, i64 %26, i32 %27)
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %30 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @B43_SEC_KEYSIZE, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %31, %35
  store i64 %36, i64* %10, align 8
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %64, %4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @B43_SEC_KEYSIZE, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %67

41:                                               ; preds = %37
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %11, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = add i32 %48, 1
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 8
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %11, align 4
  %56 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %57 = load i32, i32* @B43_SHM_SHARED, align 4
  %58 = load i64, i64* %10, align 8
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @b43_shm_write16(%struct.b43_wldev* %56, i32 %57, i64 %61, i32 %62)
  br label %64

64:                                               ; preds = %41
  %65 = load i32, i32* %9, align 4
  %66 = add i32 %65, 2
  store i32 %66, i32* %9, align 4
  br label %37

67:                                               ; preds = %37
  ret void
}

declare dso_local i32 @b43_kidx_to_fw(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_shm_write16(%struct.b43_wldev*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
