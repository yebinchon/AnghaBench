; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_input_addr_to_dram_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_input_addr_to_dram_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.amd64_pvt* }
%struct.amd64_pvt = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"    InputAddr 0x%lx translates to DramAddr of same value\0A\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"InputAddr 0x%lx translates to DramAddr 0x%lx (%d node interleave bits)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, i32)* @input_addr_to_dram_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_addr_to_dram_addr(%struct.mem_ctl_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amd64_pvt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %13 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %12, i32 0, i32 0
  %14 = load %struct.amd64_pvt*, %struct.amd64_pvt** %13, align 8
  store %struct.amd64_pvt* %14, %struct.amd64_pvt** %6, align 8
  %15 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %16 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ugt i32 %18, 7
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %23 = call i32 @dram_intlv_en(%struct.amd64_pvt* %22, i32 0)
  %24 = call i32 @num_node_interleave_bits(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = call i32 (i8*, i64, ...) @debugf1(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %3, align 4
  br label %59

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @GENMASK(i32 12, i32 35)
  %35 = and i32 %33, %34
  %36 = load i32, i32* %8, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, 4095
  %40 = add i32 %37, %39
  store i32 %40, i32* %9, align 4
  %41 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @dram_intlv_sel(%struct.amd64_pvt* %41, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = shl i32 1, %44
  %46 = sub nsw i32 %45, 1
  %47 = and i32 %43, %46
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %11, align 4
  %50 = shl i32 %49, 12
  %51 = add i32 %48, %50
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %5, align 4
  %53 = zext i32 %52 to i64
  %54 = load i32, i32* %10, align 4
  %55 = zext i32 %54 to i64
  %56 = load i32, i32* %8, align 4
  %57 = call i32 (i8*, i64, ...) @debugf1(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i64 %53, i64 %55, i32 %56)
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %32, %27
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @num_node_interleave_bits(i32) #1

declare dso_local i32 @dram_intlv_en(%struct.amd64_pvt*, i32) #1

declare dso_local i32 @debugf1(i8*, i64, ...) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @dram_intlv_sel(%struct.amd64_pvt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
