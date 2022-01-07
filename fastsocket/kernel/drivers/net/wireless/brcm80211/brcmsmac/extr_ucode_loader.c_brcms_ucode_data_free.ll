; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_ucode_loader.c_brcms_ucode_data_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_ucode_loader.c_brcms_ucode_data_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_ucode = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_ucode_data_free(%struct.brcms_ucode* %0) #0 {
  %2 = alloca %struct.brcms_ucode*, align 8
  store %struct.brcms_ucode* %0, %struct.brcms_ucode** %2, align 8
  %3 = load %struct.brcms_ucode*, %struct.brcms_ucode** %2, align 8
  %4 = getelementptr inbounds %struct.brcms_ucode, %struct.brcms_ucode* %3, i32 0, i32 12
  %5 = load i64, i64* %4, align 8
  %6 = inttoptr i64 %5 to i8*
  %7 = call i32 @brcms_ucode_free_buf(i8* %6)
  %8 = load %struct.brcms_ucode*, %struct.brcms_ucode** %2, align 8
  %9 = getelementptr inbounds %struct.brcms_ucode, %struct.brcms_ucode* %8, i32 0, i32 11
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = call i32 @brcms_ucode_free_buf(i8* %11)
  %13 = load %struct.brcms_ucode*, %struct.brcms_ucode** %2, align 8
  %14 = getelementptr inbounds %struct.brcms_ucode, %struct.brcms_ucode* %13, i32 0, i32 10
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @brcms_ucode_free_buf(i8* %16)
  %18 = load %struct.brcms_ucode*, %struct.brcms_ucode** %2, align 8
  %19 = getelementptr inbounds %struct.brcms_ucode, %struct.brcms_ucode* %18, i32 0, i32 9
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @brcms_ucode_free_buf(i8* %21)
  %23 = load %struct.brcms_ucode*, %struct.brcms_ucode** %2, align 8
  %24 = getelementptr inbounds %struct.brcms_ucode, %struct.brcms_ucode* %23, i32 0, i32 8
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @brcms_ucode_free_buf(i8* %26)
  %28 = load %struct.brcms_ucode*, %struct.brcms_ucode** %2, align 8
  %29 = getelementptr inbounds %struct.brcms_ucode, %struct.brcms_ucode* %28, i32 0, i32 7
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @brcms_ucode_free_buf(i8* %31)
  %33 = load %struct.brcms_ucode*, %struct.brcms_ucode** %2, align 8
  %34 = getelementptr inbounds %struct.brcms_ucode, %struct.brcms_ucode* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 @brcms_ucode_free_buf(i8* %36)
  %38 = load %struct.brcms_ucode*, %struct.brcms_ucode** %2, align 8
  %39 = getelementptr inbounds %struct.brcms_ucode, %struct.brcms_ucode* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @brcms_ucode_free_buf(i8* %41)
  %43 = load %struct.brcms_ucode*, %struct.brcms_ucode** %2, align 8
  %44 = getelementptr inbounds %struct.brcms_ucode, %struct.brcms_ucode* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @brcms_ucode_free_buf(i8* %46)
  %48 = load %struct.brcms_ucode*, %struct.brcms_ucode** %2, align 8
  %49 = getelementptr inbounds %struct.brcms_ucode, %struct.brcms_ucode* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 @brcms_ucode_free_buf(i8* %51)
  %53 = load %struct.brcms_ucode*, %struct.brcms_ucode** %2, align 8
  %54 = getelementptr inbounds %struct.brcms_ucode, %struct.brcms_ucode* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @brcms_ucode_free_buf(i8* %56)
  %58 = load %struct.brcms_ucode*, %struct.brcms_ucode** %2, align 8
  %59 = getelementptr inbounds %struct.brcms_ucode, %struct.brcms_ucode* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 @brcms_ucode_free_buf(i8* %61)
  %63 = load %struct.brcms_ucode*, %struct.brcms_ucode** %2, align 8
  %64 = getelementptr inbounds %struct.brcms_ucode, %struct.brcms_ucode* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @brcms_ucode_free_buf(i8* %66)
  ret void
}

declare dso_local i32 @brcms_ucode_free_buf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
