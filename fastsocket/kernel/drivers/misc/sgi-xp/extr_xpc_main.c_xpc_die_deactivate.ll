; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_die_deactivate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_die_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)*, i64 (i16)*, i32 (%struct.xpc_partition*)*, i32 (%struct.xpc_partition*)*, i32 (...)* }
%struct.xpc_partition = type { i64 }

@xpc_die_disconnecting = common dso_local global i32 0, align 4
@xpc_exiting = common dso_local global i32 0, align 4
@xpc_arch_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@xp_max_npartitions = common dso_local global i16 0, align 2
@xpc_partitions = common dso_local global %struct.xpc_partition* null, align 8
@XPC_P_AS_INACTIVE = common dso_local global i64 0, align 8
@xpc_disengage_timelimit = common dso_local global i32 0, align 4
@XPC_DEACTIVATE_PRINTMSG_INTERVAL = common dso_local global i32 0, align 4
@xpc_part = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"all partitions have deactivated\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"deactivate from remote partition %d timed out\0A\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"waiting for remote partitions to deactivate, timeout in %ld seconds\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @xpc_die_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_die_deactivate() #0 {
  %1 = alloca %struct.xpc_partition*, align 8
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = call i64 @cmpxchg(i32* @xpc_die_disconnecting, i32 0, i32 1)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %102

9:                                                ; preds = %0
  store i32 1, i32* @xpc_exiting, align 4
  %10 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 4), align 8
  %11 = call i32 (...) %10()
  store i16 0, i16* %2, align 2
  br label %12

12:                                               ; preds = %41, %9
  %13 = load i16, i16* %2, align 2
  %14 = sext i16 %13 to i32
  %15 = load i16, i16* @xp_max_npartitions, align 2
  %16 = sext i16 %15 to i32
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %12
  %19 = load %struct.xpc_partition*, %struct.xpc_partition** @xpc_partitions, align 8
  %20 = load i16, i16* %2, align 2
  %21 = sext i16 %20 to i64
  %22 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %19, i64 %21
  store %struct.xpc_partition* %22, %struct.xpc_partition** %1, align 8
  %23 = load i64 (i16)*, i64 (i16)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 1), align 8
  %24 = load i16, i16* %2, align 2
  %25 = call i64 %23(i16 signext %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %18
  %28 = load %struct.xpc_partition*, %struct.xpc_partition** %1, align 8
  %29 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @XPC_P_AS_INACTIVE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27, %18
  %34 = load i32 (%struct.xpc_partition*)*, i32 (%struct.xpc_partition*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 3), align 8
  %35 = load %struct.xpc_partition*, %struct.xpc_partition** %1, align 8
  %36 = call i32 %34(%struct.xpc_partition* %35)
  %37 = load i32 (%struct.xpc_partition*)*, i32 (%struct.xpc_partition*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 2), align 8
  %38 = load %struct.xpc_partition*, %struct.xpc_partition** %1, align 8
  %39 = call i32 %37(%struct.xpc_partition* %38)
  br label %40

40:                                               ; preds = %33, %27
  br label %41

41:                                               ; preds = %40
  %42 = load i16, i16* %2, align 2
  %43 = add i16 %42, 1
  store i16 %43, i16* %2, align 2
  br label %12

44:                                               ; preds = %12
  %45 = load i32, i32* @xpc_disengage_timelimit, align 4
  %46 = mul nsw i32 %45, 1000
  %47 = mul nsw i32 %46, 5
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %4, align 8
  %49 = load i32, i32* @XPC_DEACTIVATE_PRINTMSG_INTERVAL, align 4
  %50 = mul nsw i32 %49, 1000
  %51 = mul nsw i32 %50, 5
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %44, %100
  %54 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 0), align 8
  %55 = call i32 (...) %54()
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @xpc_part, align 4
  %60 = call i32 (i32, i8*, ...) @dev_info(i32 %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %102

61:                                               ; preds = %53
  %62 = load i64, i64* %4, align 8
  %63 = add nsw i64 %62, -1
  store i64 %63, i64* %4, align 8
  %64 = icmp ne i64 %62, 0
  br i1 %64, label %87, label %65

65:                                               ; preds = %61
  store i16 0, i16* %2, align 2
  br label %66

66:                                               ; preds = %83, %65
  %67 = load i16, i16* %2, align 2
  %68 = sext i16 %67 to i32
  %69 = load i16, i16* @xp_max_npartitions, align 2
  %70 = sext i16 %69 to i32
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %72, label %86

72:                                               ; preds = %66
  %73 = load i64 (i16)*, i64 (i16)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xpc_arch_ops, i32 0, i32 1), align 8
  %74 = load i16, i16* %2, align 2
  %75 = call i64 %73(i16 signext %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i32, i32* @xpc_part, align 4
  %79 = load i16, i16* %2, align 2
  %80 = sext i16 %79 to i32
  %81 = call i32 (i32, i8*, ...) @dev_info(i32 %78, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %77, %72
  br label %83

83:                                               ; preds = %82
  %84 = load i16, i16* %2, align 2
  %85 = add i16 %84, 1
  store i16 %85, i16* %2, align 2
  br label %66

86:                                               ; preds = %66
  br label %102

87:                                               ; preds = %61
  %88 = load i64, i64* %5, align 8
  %89 = add nsw i64 %88, -1
  store i64 %89, i64* %5, align 8
  %90 = icmp ne i64 %88, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* @xpc_part, align 4
  %93 = load i64, i64* %4, align 8
  %94 = sdiv i64 %93, 5000
  %95 = call i32 (i32, i8*, ...) @dev_info(i32 %92, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i64 %94)
  %96 = load i32, i32* @XPC_DEACTIVATE_PRINTMSG_INTERVAL, align 4
  %97 = mul nsw i32 %96, 1000
  %98 = mul nsw i32 %97, 5
  %99 = sext i32 %98 to i64
  store i64 %99, i64* %5, align 8
  br label %100

100:                                              ; preds = %91, %87
  %101 = call i32 @udelay(i32 200)
  br label %53

102:                                              ; preds = %8, %86, %58
  ret void
}

declare dso_local i64 @cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
