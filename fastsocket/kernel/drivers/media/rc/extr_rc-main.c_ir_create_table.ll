; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_rc-main.c_ir_create_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_rc-main.c_ir_create_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_map = type { i8*, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Allocated space for %u keycode entries (%u bytes)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_map*, i8*, i32, i64)* @ir_create_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_create_table(%struct.rc_map* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rc_map*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.rc_map* %0, %struct.rc_map** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %12 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %15 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load i64, i64* %9, align 8
  %17 = mul i64 %16, 4
  %18 = call i32 @roundup_pow_of_two(i64 %17)
  %19 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %20 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %22 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = udiv i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %28 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %30 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32 @kmalloc(i32 %31, i32 %32)
  %34 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %35 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %37 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %4
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %51

43:                                               ; preds = %4
  %44 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %45 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.rc_map*, %struct.rc_map** %6, align 8
  %48 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @IR_dprintk(i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %49)
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %43, %40
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @roundup_pow_of_two(i64) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @IR_dprintk(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
