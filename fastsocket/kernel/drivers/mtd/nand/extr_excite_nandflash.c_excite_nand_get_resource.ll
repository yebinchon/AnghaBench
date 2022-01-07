; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_excite_nandflash.c_excite_nand_get_resource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_excite_nandflash.c_excite_nand_get_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s_%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (%struct.platform_device*, i64, i8*)* @excite_nand_get_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @excite_nand_get_resource(%struct.platform_device* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [80 x i8], align 16
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %10 = load i8*, i8** %7, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @snprintf(i8* %9, i32 80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %10, i32 %13)
  %15 = sext i32 %14 to i64
  %16 = icmp uge i64 %15, 80
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store %struct.resource* null, %struct.resource** %4, align 8
  br label %23

18:                                               ; preds = %3
  %19 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %22 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %19, i64 %20, i8* %21)
  store %struct.resource* %22, %struct.resource** %4, align 8
  br label %23

23:                                               ; preds = %18, %17
  %24 = load %struct.resource*, %struct.resource** %4, align 8
  ret %struct.resource* %24
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
