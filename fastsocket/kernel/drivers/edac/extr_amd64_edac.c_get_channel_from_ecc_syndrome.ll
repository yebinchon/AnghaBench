; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_get_channel_from_ecc_syndrome.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_get_channel_from_ecc_syndrome.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.amd64_pvt* }
%struct.amd64_pvt = type { i32 }

@x8_vectors = common dso_local global i32 0, align 4
@x4_vectors = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Illegal syndrome type: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, i32)* @get_channel_from_ecc_syndrome to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_channel_from_ecc_syndrome(%struct.mem_ctl_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amd64_pvt*, align 8
  %7 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %9 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %8, i32 0, i32 0
  %10 = load %struct.amd64_pvt*, %struct.amd64_pvt** %9, align 8
  store %struct.amd64_pvt* %10, %struct.amd64_pvt** %6, align 8
  store i32 -1, i32* %7, align 4
  %11 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %12 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 8
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @x8_vectors, align 4
  %18 = load i32, i32* @x8_vectors, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  %20 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %21 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @decode_syndrome(i32 %16, i32 %17, i32 %19, i32 %22)
  store i32 %23, i32* %7, align 4
  br label %45

24:                                               ; preds = %2
  %25 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %26 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 4
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @x4_vectors, align 4
  %32 = load i32, i32* @x4_vectors, align 4
  %33 = call i32 @ARRAY_SIZE(i32 %32)
  %34 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %35 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @decode_syndrome(i32 %30, i32 %31, i32 %33, i32 %36)
  store i32 %37, i32* %7, align 4
  br label %44

38:                                               ; preds = %24
  %39 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %40 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @amd64_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %51

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44, %15
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %48 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @map_err_sym_to_channel(i32 %46, i32 %49)
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %45, %38
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @decode_syndrome(i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @amd64_warn(i8*, i32) #1

declare dso_local i32 @map_err_sym_to_channel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
