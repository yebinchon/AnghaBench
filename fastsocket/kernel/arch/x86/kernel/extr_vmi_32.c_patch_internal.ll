; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_vmi_32.c_patch_internal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_vmi_32.c_patch_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmi_relocation_info = type { i32, i64 }

@vmi_rom = common dso_local global i32 0, align 4
@get_reloc = common dso_local global i32 0, align 4
@MNEM_CALL = common dso_local global i8 0, align 1
@MNEM_JMP = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i64)* @patch_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_internal(i32 %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vmi_relocation_info*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = bitcast i32* %10 to %struct.vmi_relocation_info*
  store %struct.vmi_relocation_info* %12, %struct.vmi_relocation_info** %11, align 8
  %13 = load i32, i32* @vmi_rom, align 4
  %14 = load i32, i32* @get_reloc, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @call_vrom_long_func(i32 %13, i32 %14, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.vmi_relocation_info*, %struct.vmi_relocation_info** %11, align 8
  %18 = getelementptr inbounds %struct.vmi_relocation_info, %struct.vmi_relocation_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %48 [
    i32 131, label %20
    i32 130, label %33
    i32 128, label %46
    i32 129, label %47
  ]

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ult i32 %21, 5
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load i8, i8* @MNEM_CALL, align 1
  %26 = load i8*, i8** %8, align 8
  store i8 %25, i8* %26, align 1
  %27 = load i8*, i8** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.vmi_relocation_info*, %struct.vmi_relocation_info** %11, align 8
  %30 = getelementptr inbounds %struct.vmi_relocation_info, %struct.vmi_relocation_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @patch_offset(i8* %27, i64 %28, i64 %31)
  store i32 5, i32* %5, align 4
  br label %52

33:                                               ; preds = %4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ult i32 %34, 5
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load i8, i8* @MNEM_JMP, align 1
  %39 = load i8*, i8** %8, align 8
  store i8 %38, i8* %39, align 1
  %40 = load i8*, i8** %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.vmi_relocation_info*, %struct.vmi_relocation_info** %11, align 8
  %43 = getelementptr inbounds %struct.vmi_relocation_info, %struct.vmi_relocation_info* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @patch_offset(i8* %40, i64 %41, i64 %44)
  store i32 5, i32* %5, align 4
  br label %52

46:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %52

47:                                               ; preds = %4
  br label %50

48:                                               ; preds = %4
  %49 = call i32 (...) @BUG()
  br label %50

50:                                               ; preds = %48, %47
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %46, %33, %20
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @call_vrom_long_func(i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @patch_offset(i8*, i64, i64) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
