; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_partition.c_xpc_discovery.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_partition.c_xpc_discovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.xpc_rsvd_page*, i64, i32)* }
%struct.xpc_rsvd_page = type { i32 }

@XPC_RP_HEADER_SIZE = common dso_local global i64 0, align 8
@xpc_nasid_mask_nbytes = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@xpc_nasid_mask_nlongs = common dso_local global i32 0, align 4
@xpc_rsvd_page = common dso_local global i64 0, align 8
@xp_region_size = common dso_local global i32 0, align 4
@xpc_exiting = common dso_local global i64 0, align 8
@xpc_part = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"searching region %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"checking nasid %d\0A\00", align 1
@xpc_part_nasids = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [73 x i8] c"PROM indicates Nasid %d is part of the local partition; skipping region\0A\00", align 1
@xpc_mach_nasids = common dso_local global i64* null, align 8
@.str.3 = private unnamed_addr constant [63 x i8] c"PROM indicates Nasid %d was not on Numa-Link network at reset\0A\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"Nasid %d is part of a partition which was previously discovered\0A\00", align 1
@xpSuccess = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [54 x i8] c"unable to get reserved page from nasid %d, reason=%d\0A\00", align 1
@xpLocalPartid = common dso_local global i32 0, align 4
@xpc_arch_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpc_discovery() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.xpc_rsvd_page*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xpc_rsvd_page*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = load i64, i64* @XPC_RP_HEADER_SIZE, align 8
  %12 = load i64, i64* @xpc_nasid_mask_nbytes, align 8
  %13 = add nsw i64 %11, %12
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.xpc_rsvd_page* @xpc_kmalloc_cacheline_aligned(i64 %13, i32 %14, i8** %1)
  store %struct.xpc_rsvd_page* %15, %struct.xpc_rsvd_page** %2, align 8
  %16 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %2, align 8
  %17 = icmp eq %struct.xpc_rsvd_page* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %0
  br label %154

19:                                               ; preds = %0
  %20 = load i32, i32* @xpc_nasid_mask_nlongs, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 8, %21
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i64* @kzalloc(i32 %23, i32 %24)
  store i64* %25, i64** %9, align 8
  %26 = load i64*, i64** %9, align 8
  %27 = icmp eq i64* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i8*, i8** %1, align 8
  %30 = call i32 @kfree(i8* %29)
  br label %154

31:                                               ; preds = %19
  %32 = load i64, i64* @xpc_rsvd_page, align 8
  %33 = inttoptr i64 %32 to %struct.xpc_rsvd_page*
  store %struct.xpc_rsvd_page* %33, %struct.xpc_rsvd_page** %8, align 8
  %34 = load i32, i32* @xp_region_size, align 4
  store i32 %34, i32* %5, align 4
  %35 = call i64 (...) @is_uv()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 256, i32* %6, align 4
  br label %55

38:                                               ; preds = %31
  store i32 64, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  switch i32 %39, label %54 [
    i32 128, label %40
    i32 64, label %43
    i32 32, label %46
  ]

40:                                               ; preds = %38
  %41 = load i32, i32* %6, align 4
  %42 = mul nsw i32 %41, 2
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %38, %40
  %44 = load i32, i32* %6, align 4
  %45 = mul nsw i32 %44, 2
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %38, %43
  %47 = load i32, i32* %6, align 4
  %48 = mul nsw i32 %47, 2
  store i32 %48, i32* %6, align 4
  store i32 16, i32* %5, align 4
  %49 = call i32 (...) @is_shub2()
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @DBUG_ON(i32 %52)
  br label %54

54:                                               ; preds = %46, %38
  br label %55

55:                                               ; preds = %54, %37
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %145, %55
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %148

60:                                               ; preds = %56
  %61 = load i64, i64* @xpc_exiting, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %148

64:                                               ; preds = %60
  %65 = load i32, i32* @xpc_part, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %5, align 4
  %70 = mul nsw i32 %68, %69
  %71 = mul nsw i32 %70, 2
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %141, %64
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  %76 = load i32, i32* %5, align 4
  %77 = mul nsw i32 %75, %76
  %78 = mul nsw i32 %77, 2
  %79 = icmp slt i32 %73, %78
  br i1 %79, label %80, label %144

80:                                               ; preds = %72
  %81 = load i64, i64* @xpc_exiting, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %144

84:                                               ; preds = %80
  %85 = load i32, i32* @xpc_part, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %7, align 4
  %89 = sdiv i32 %88, 2
  %90 = load i64*, i64** @xpc_part_nasids, align 8
  %91 = call i64 @test_bit(i32 %89, i64* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %84
  %94 = load i32, i32* @xpc_part, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %94, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  br label %144

97:                                               ; preds = %84
  %98 = load i32, i32* %7, align 4
  %99 = sdiv i32 %98, 2
  %100 = load i64*, i64** @xpc_mach_nasids, align 8
  %101 = call i64 @test_bit(i32 %99, i64* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %97
  %104 = load i32, i32* @xpc_part, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %104, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  br label %141

107:                                              ; preds = %97
  %108 = load i32, i32* %7, align 4
  %109 = sdiv i32 %108, 2
  %110 = load i64*, i64** %9, align 8
  %111 = call i64 @test_bit(i32 %109, i64* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = load i32, i32* @xpc_part, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %114, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i32 %115)
  br label %141

117:                                              ; preds = %107
  %118 = load i32, i32* %7, align 4
  %119 = load i64*, i64** %9, align 8
  %120 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %2, align 8
  %121 = call i32 @xpc_get_remote_rp(i32 %118, i64* %119, %struct.xpc_rsvd_page* %120, i64* %3)
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* @xpSuccess, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %117
  %126 = load i32, i32* @xpc_part, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %10, align 4
  %129 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %126, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %127, i32 %128)
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* @xpLocalPartid, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  br label %144

134:                                              ; preds = %125
  br label %141

135:                                              ; preds = %117
  %136 = load i32 (%struct.xpc_rsvd_page*, i64, i32)*, i32 (%struct.xpc_rsvd_page*, i64, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 0), align 8
  %137 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %2, align 8
  %138 = load i64, i64* %3, align 8
  %139 = load i32, i32* %7, align 4
  %140 = call i32 %136(%struct.xpc_rsvd_page* %137, i64 %138, i32 %139)
  br label %141

141:                                              ; preds = %135, %134, %113, %103
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, 2
  store i32 %143, i32* %7, align 4
  br label %72

144:                                              ; preds = %133, %93, %83, %72
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %4, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %4, align 4
  br label %56

148:                                              ; preds = %63, %56
  %149 = load i64*, i64** %9, align 8
  %150 = bitcast i64* %149 to i8*
  %151 = call i32 @kfree(i8* %150)
  %152 = load i8*, i8** %1, align 8
  %153 = call i32 @kfree(i8* %152)
  br label %154

154:                                              ; preds = %148, %28, %18
  ret void
}

declare dso_local %struct.xpc_rsvd_page* @xpc_kmalloc_cacheline_aligned(i64, i32, i8**) #1

declare dso_local i64* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i64 @is_uv(...) #1

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32 @is_shub2(...) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @xpc_get_remote_rp(i32, i64*, %struct.xpc_rsvd_page*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
