; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_bios_uv.c_uv_bios_call.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_bios_uv.c_uv_bios_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uv_systab = type { i32 }

@uv_systab = common dso_local global %struct.uv_systab zeroinitializer, align 4
@BIOS_STATUS_UNIMPLEMENTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_bios_call(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.uv_systab*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.uv_systab* @uv_systab, %struct.uv_systab** %14, align 8
  %16 = load %struct.uv_systab*, %struct.uv_systab** %14, align 8
  %17 = getelementptr inbounds %struct.uv_systab, %struct.uv_systab* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* @BIOS_STATUS_UNIMPLEMENTED, align 4
  store i32 %21, i32* %7, align 4
  br label %36

22:                                               ; preds = %6
  %23 = load %struct.uv_systab*, %struct.uv_systab** %14, align 8
  %24 = getelementptr inbounds %struct.uv_systab, %struct.uv_systab* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @__va(i32 %25)
  %27 = inttoptr i64 %26 to i8*
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @efi_call6(i8* %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %22, %20
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local i32 @efi_call6(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @__va(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
