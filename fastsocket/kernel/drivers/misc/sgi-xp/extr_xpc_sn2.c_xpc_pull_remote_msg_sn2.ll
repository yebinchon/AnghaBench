; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_pull_remote_msg_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_pull_remote_msg_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i32 }
%struct.xpc_msg_sn2 = type { i32 }
%struct.xpc_channel = type { i64, i64, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.xpc_channel_sn2 }
%struct.xpc_channel_sn2 = type { i64, i64, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@xpc_partitions = common dso_local global %struct.xpc_partition* null, align 8
@xpSuccess = common dso_local global i32 0, align 4
@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"failed to pull %d msgs starting with msg %lld from partition %d, channel=%d, ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xpc_msg_sn2* (%struct.xpc_channel*, i64)* @xpc_pull_remote_msg_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xpc_msg_sn2* @xpc_pull_remote_msg_sn2(%struct.xpc_channel* %0, i64 %1) #0 {
  %3 = alloca %struct.xpc_msg_sn2*, align 8
  %4 = alloca %struct.xpc_channel*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.xpc_partition*, align 8
  %7 = alloca %struct.xpc_channel_sn2*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.xpc_msg_sn2*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.xpc_channel* %0, %struct.xpc_channel** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load %struct.xpc_partition*, %struct.xpc_partition** @xpc_partitions, align 8
  %15 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %16 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %14, i64 %17
  store %struct.xpc_partition* %18, %struct.xpc_partition** %6, align 8
  %19 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %20 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store %struct.xpc_channel_sn2* %21, %struct.xpc_channel_sn2** %7, align 8
  %22 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %7, align 8
  %23 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %22, i32 0, i32 3
  %24 = call i64 @mutex_lock_interruptible(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store %struct.xpc_msg_sn2* null, %struct.xpc_msg_sn2** %3, align 8
  br label %148

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %122, %27
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %7, align 8
  %31 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp uge i64 %29, %32
  br i1 %33, label %34, label %128

34:                                               ; preds = %28
  %35 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %7, align 8
  %36 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %39 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = urem i64 %37, %40
  store i64 %41, i64* %10, align 8
  %42 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %7, align 8
  %43 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %7, align 8
  %46 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp uge i64 %44, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @DBUG_ON(i32 %50)
  %52 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %7, align 8
  %53 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %7, align 8
  %57 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub i64 %55, %58
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* %11, align 8
  %62 = add i64 %60, %61
  %63 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %64 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ugt i64 %62, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %34
  %68 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %69 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %10, align 8
  %72 = sub i64 %70, %71
  store i64 %72, i64* %11, align 8
  br label %73

73:                                               ; preds = %67, %34
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %76 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = mul i64 %74, %77
  store i64 %78, i64* %12, align 8
  %79 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %7, align 8
  %80 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %12, align 8
  %83 = add i64 %81, %82
  %84 = inttoptr i64 %83 to %struct.xpc_msg_sn2*
  store %struct.xpc_msg_sn2* %84, %struct.xpc_msg_sn2** %9, align 8
  %85 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %7, align 8
  %86 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %12, align 8
  %89 = add i64 %87, %88
  store i64 %89, i64* %8, align 8
  %90 = load %struct.xpc_partition*, %struct.xpc_partition** %6, align 8
  %91 = load %struct.xpc_msg_sn2*, %struct.xpc_msg_sn2** %9, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %95 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = mul i64 %93, %96
  %98 = call i32 @xpc_pull_remote_cachelines_sn2(%struct.xpc_partition* %90, %struct.xpc_msg_sn2* %91, i64 %92, i64 %97)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* @xpSuccess, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %122

102:                                              ; preds = %73
  %103 = load i32, i32* @xpc_chan, align 4
  %104 = load i64, i64* %11, align 8
  %105 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %7, align 8
  %106 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %109 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %112 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @dev_dbg(i32 %103, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i64 %104, i64 %107, i64 %110, i32 %113, i32 %114)
  %116 = load %struct.xpc_partition*, %struct.xpc_partition** %6, align 8
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @XPC_DEACTIVATE_PARTITION(%struct.xpc_partition* %116, i32 %117)
  %119 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %7, align 8
  %120 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %119, i32 0, i32 3
  %121 = call i32 @mutex_unlock(i32* %120)
  store %struct.xpc_msg_sn2* null, %struct.xpc_msg_sn2** %3, align 8
  br label %148

122:                                              ; preds = %73
  %123 = load i64, i64* %11, align 8
  %124 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %7, align 8
  %125 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = add i64 %126, %123
  store i64 %127, i64* %125, align 8
  br label %28

128:                                              ; preds = %28
  %129 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %7, align 8
  %130 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %129, i32 0, i32 3
  %131 = call i32 @mutex_unlock(i32* %130)
  %132 = load i64, i64* %5, align 8
  %133 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %134 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = urem i64 %132, %135
  %137 = load %struct.xpc_channel*, %struct.xpc_channel** %4, align 8
  %138 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = mul i64 %136, %139
  store i64 %140, i64* %12, align 8
  %141 = load %struct.xpc_channel_sn2*, %struct.xpc_channel_sn2** %7, align 8
  %142 = getelementptr inbounds %struct.xpc_channel_sn2, %struct.xpc_channel_sn2* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %12, align 8
  %145 = add i64 %143, %144
  %146 = inttoptr i64 %145 to %struct.xpc_msg_sn2*
  store %struct.xpc_msg_sn2* %146, %struct.xpc_msg_sn2** %9, align 8
  %147 = load %struct.xpc_msg_sn2*, %struct.xpc_msg_sn2** %9, align 8
  store %struct.xpc_msg_sn2* %147, %struct.xpc_msg_sn2** %3, align 8
  br label %148

148:                                              ; preds = %128, %102, %26
  %149 = load %struct.xpc_msg_sn2*, %struct.xpc_msg_sn2** %3, align 8
  ret %struct.xpc_msg_sn2* %149
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32 @xpc_pull_remote_cachelines_sn2(%struct.xpc_partition*, %struct.xpc_msg_sn2*, i64, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, i64, i32, i32) #1

declare dso_local i32 @XPC_DEACTIVATE_PARTITION(%struct.xpc_partition*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
