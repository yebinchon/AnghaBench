; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/chips/extr_jedec_probe.c_jedec_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/chips/extr_jedec_probe.c_jedec_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i32 }
%struct.cfi_private = type { i32, i64, i64 }

@MTD_DEBUG_LEVEL3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"reset unlock called %x %x \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.map_info*, %struct.cfi_private*)* @jedec_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jedec_reset(i32 %0, %struct.map_info* %1, %struct.cfi_private* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.map_info*, align 8
  %6 = alloca %struct.cfi_private*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.map_info* %1, %struct.map_info** %5, align 8
  store %struct.cfi_private* %2, %struct.cfi_private** %6, align 8
  %7 = load %struct.cfi_private*, %struct.cfi_private** %6, align 8
  %8 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %3
  %12 = load i32, i32* @MTD_DEBUG_LEVEL3, align 4
  %13 = load %struct.cfi_private*, %struct.cfi_private** %6, align 8
  %14 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.cfi_private*, %struct.cfi_private** %6, align 8
  %17 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @DEBUG(i32 %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %15, i64 %18)
  %20 = load %struct.cfi_private*, %struct.cfi_private** %6, align 8
  %21 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.map_info*, %struct.map_info** %5, align 8
  %25 = load %struct.cfi_private*, %struct.cfi_private** %6, align 8
  %26 = load %struct.cfi_private*, %struct.cfi_private** %6, align 8
  %27 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @cfi_send_gen_cmd(i32 170, i64 %22, i32 %23, %struct.map_info* %24, %struct.cfi_private* %25, i32 %28, i32* null)
  %30 = load %struct.cfi_private*, %struct.cfi_private** %6, align 8
  %31 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.map_info*, %struct.map_info** %5, align 8
  %35 = load %struct.cfi_private*, %struct.cfi_private** %6, align 8
  %36 = load %struct.cfi_private*, %struct.cfi_private** %6, align 8
  %37 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @cfi_send_gen_cmd(i32 85, i64 %32, i32 %33, %struct.map_info* %34, %struct.cfi_private* %35, i32 %38, i32* null)
  br label %40

40:                                               ; preds = %11, %3
  %41 = load %struct.cfi_private*, %struct.cfi_private** %6, align 8
  %42 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.map_info*, %struct.map_info** %5, align 8
  %46 = load %struct.cfi_private*, %struct.cfi_private** %6, align 8
  %47 = load %struct.cfi_private*, %struct.cfi_private** %6, align 8
  %48 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @cfi_send_gen_cmd(i32 240, i64 %43, i32 %44, %struct.map_info* %45, %struct.cfi_private* %46, i32 %49, i32* null)
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.map_info*, %struct.map_info** %5, align 8
  %53 = load %struct.cfi_private*, %struct.cfi_private** %6, align 8
  %54 = load %struct.cfi_private*, %struct.cfi_private** %6, align 8
  %55 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @cfi_send_gen_cmd(i32 255, i64 0, i32 %51, %struct.map_info* %52, %struct.cfi_private* %53, i32 %56, i32* null)
  ret void
}

declare dso_local i32 @DEBUG(i32, i8*, i64, i64) #1

declare dso_local i32 @cfi_send_gen_cmd(i32, i64, i32, %struct.map_info*, %struct.cfi_private*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
