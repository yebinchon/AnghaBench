; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_mdesc.c_mdesc_kmalloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_mdesc.c_mdesc_kmalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdesc_handle = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mdesc_handle* (i32)* @mdesc_kmalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mdesc_handle* @mdesc_kmalloc(i32 %0) #0 {
  %2 = alloca %struct.mdesc_handle*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mdesc_handle*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = zext i32 %8 to i64
  %10 = add i64 0, %9
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = add i32 %12, 15
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = load i32, i32* @__GFP_NOFAIL, align 4
  %16 = or i32 %14, %15
  %17 = call i8* @kmalloc(i32 %13, i32 %16)
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %1
  %21 = load i8*, i8** %5, align 8
  %22 = ptrtoint i8* %21 to i64
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = add i64 %23, 15
  %25 = and i64 %24, -16
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = inttoptr i64 %26 to %struct.mdesc_handle*
  store %struct.mdesc_handle* %27, %struct.mdesc_handle** %6, align 8
  %28 = load %struct.mdesc_handle*, %struct.mdesc_handle** %6, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @mdesc_handle_init(%struct.mdesc_handle* %28, i32 %29, i8* %30)
  %32 = load %struct.mdesc_handle*, %struct.mdesc_handle** %6, align 8
  store %struct.mdesc_handle* %32, %struct.mdesc_handle** %2, align 8
  br label %34

33:                                               ; preds = %1
  store %struct.mdesc_handle* null, %struct.mdesc_handle** %2, align 8
  br label %34

34:                                               ; preds = %33, %20
  %35 = load %struct.mdesc_handle*, %struct.mdesc_handle** %2, align 8
  ret %struct.mdesc_handle* %35
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @mdesc_handle_init(%struct.mdesc_handle*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
