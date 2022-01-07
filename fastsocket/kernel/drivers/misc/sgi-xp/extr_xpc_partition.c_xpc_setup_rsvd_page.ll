; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_partition.c_xpc_setup_rsvd_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_partition.c_xpc_setup_rsvd_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.xpc_rsvd_page*)* }
%struct.xpc_rsvd_page = type { i32, i32, i32, i32, i64, i32 }

@xpc_part = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"SAL failed to locate the reserved page\0A\00", align 1
@ESRCH = common dso_local global i32 0, align 4
@xp_partition_id = common dso_local global i32 0, align 4
@xp_max_npartitions = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"the reserved page's partid of %d is outside supported range (< 0 || >= %d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@XPC_RP_VERSION = common dso_local global i32 0, align 4
@xpc_nasid_mask_nbytes = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@xpc_nasid_mask_nlongs = common dso_local global i32 0, align 4
@xpc_part_nasids = common dso_local global i32 0, align 4
@xpc_mach_nasids = common dso_local global i32 0, align 4
@xpc_arch_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@jiffies = common dso_local global i64 0, align 8
@xpc_rsvd_page = common dso_local global %struct.xpc_rsvd_page* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xpc_setup_rsvd_page() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.xpc_rsvd_page*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = call i32 (...) @preempt_disable()
  %7 = call i32 (...) @smp_processor_id()
  %8 = call i32 @xp_cpu_to_nasid(i32 %7)
  %9 = call i64 @xpc_get_rsvd_page_pa(i32 %8)
  store i64 %9, i64* %4, align 8
  %10 = call i32 (...) @preempt_enable()
  %11 = load i64, i64* %4, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %0
  %14 = load i32, i32* @xpc_part, align 4
  %15 = call i32 (i32, i8*, ...) @dev_err(i32 %14, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ESRCH, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %1, align 4
  br label %112

18:                                               ; preds = %0
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @xp_socket_pa(i64 %19)
  %21 = call i64 @__va(i32 %20)
  %22 = inttoptr i64 %21 to %struct.xpc_rsvd_page*
  store %struct.xpc_rsvd_page* %22, %struct.xpc_rsvd_page** %3, align 8
  %23 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %3, align 8
  %24 = getelementptr inbounds %struct.xpc_rsvd_page, %struct.xpc_rsvd_page* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %25, 3
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %3, align 8
  %29 = getelementptr inbounds %struct.xpc_rsvd_page, %struct.xpc_rsvd_page* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 255
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %27, %18
  %33 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %3, align 8
  %34 = getelementptr inbounds %struct.xpc_rsvd_page, %struct.xpc_rsvd_page* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @xp_partition_id, align 4
  %37 = icmp ne i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %3, align 8
  %41 = getelementptr inbounds %struct.xpc_rsvd_page, %struct.xpc_rsvd_page* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %32
  %45 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %3, align 8
  %46 = getelementptr inbounds %struct.xpc_rsvd_page, %struct.xpc_rsvd_page* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @xp_max_npartitions, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %44, %32
  %51 = load i32, i32* @xpc_part, align 4
  %52 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %3, align 8
  %53 = getelementptr inbounds %struct.xpc_rsvd_page, %struct.xpc_rsvd_page* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @xp_max_npartitions, align 4
  %56 = call i32 (i32, i8*, ...) @dev_err(i32 %51, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %1, align 4
  br label %112

59:                                               ; preds = %44
  %60 = load i32, i32* @XPC_RP_VERSION, align 4
  %61 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %3, align 8
  %62 = getelementptr inbounds %struct.xpc_rsvd_page, %struct.xpc_rsvd_page* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @xp_max_npartitions, align 4
  %64 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %3, align 8
  %65 = getelementptr inbounds %struct.xpc_rsvd_page, %struct.xpc_rsvd_page* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %3, align 8
  %67 = getelementptr inbounds %struct.xpc_rsvd_page, %struct.xpc_rsvd_page* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %73

70:                                               ; preds = %59
  %71 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %3, align 8
  %72 = getelementptr inbounds %struct.xpc_rsvd_page, %struct.xpc_rsvd_page* %71, i32 0, i32 3
  store i32 128, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %59
  %74 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %3, align 8
  %75 = getelementptr inbounds %struct.xpc_rsvd_page, %struct.xpc_rsvd_page* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* @xpc_nasid_mask_nbytes, align 4
  %77 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %3, align 8
  %78 = getelementptr inbounds %struct.xpc_rsvd_page, %struct.xpc_rsvd_page* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @BITS_PER_BYTE, align 4
  %81 = mul nsw i32 %79, %80
  %82 = call i32 @BITS_TO_LONGS(i32 %81)
  store i32 %82, i32* @xpc_nasid_mask_nlongs, align 4
  %83 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %3, align 8
  %84 = call i32 @XPC_RP_PART_NASIDS(%struct.xpc_rsvd_page* %83)
  store i32 %84, i32* @xpc_part_nasids, align 4
  %85 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %3, align 8
  %86 = call i32 @XPC_RP_MACH_NASIDS(%struct.xpc_rsvd_page* %85)
  store i32 %86, i32* @xpc_mach_nasids, align 4
  %87 = load i32 (%struct.xpc_rsvd_page*)*, i32 (%struct.xpc_rsvd_page*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 0), align 8
  %88 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %3, align 8
  %89 = call i32 %87(%struct.xpc_rsvd_page* %88)
  store i32 %89, i32* %2, align 4
  %90 = load i32, i32* %2, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %73
  %93 = load i32, i32* %2, align 4
  store i32 %93, i32* %1, align 4
  br label %112

94:                                               ; preds = %73
  %95 = load i64, i64* @jiffies, align 8
  store i64 %95, i64* %5, align 8
  %96 = load i64, i64* %5, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %94
  %99 = load i64, i64* %5, align 8
  %100 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %3, align 8
  %101 = getelementptr inbounds %struct.xpc_rsvd_page, %struct.xpc_rsvd_page* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %99, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %98, %94
  %105 = load i64, i64* %5, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %5, align 8
  br label %107

107:                                              ; preds = %104, %98
  %108 = load i64, i64* %5, align 8
  %109 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %3, align 8
  %110 = getelementptr inbounds %struct.xpc_rsvd_page, %struct.xpc_rsvd_page* %109, i32 0, i32 4
  store i64 %108, i64* %110, align 8
  %111 = load %struct.xpc_rsvd_page*, %struct.xpc_rsvd_page** %3, align 8
  store %struct.xpc_rsvd_page* %111, %struct.xpc_rsvd_page** @xpc_rsvd_page, align 8
  store i32 0, i32* %1, align 4
  br label %112

112:                                              ; preds = %107, %92, %50, %13
  %113 = load i32, i32* %1, align 4
  ret i32 %113
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i64 @xpc_get_rsvd_page_pa(i32) #1

declare dso_local i32 @xp_cpu_to_nasid(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @__va(i32) #1

declare dso_local i32 @xp_socket_pa(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @XPC_RP_PART_NASIDS(%struct.xpc_rsvd_page*) #1

declare dso_local i32 @XPC_RP_MACH_NASIDS(%struct.xpc_rsvd_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
