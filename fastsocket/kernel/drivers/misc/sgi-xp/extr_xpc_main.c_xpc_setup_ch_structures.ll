; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_setup_ch_structures.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_setup_ch_structures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.xpc_partition*)* }
%struct.xpc_partition = type { i32, %struct.xpc_channel*, i32*, %struct.xpc_channel*, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.xpc_channel = type { i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@XPC_MAX_NCHANNELS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"can't get memory for channels\0A\00", align 1
@xpNoMemory = common dso_local global i32 0, align 4
@XPC_OPENCLOSE_ARGS_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"can't get memory for remote connect args\0A\00", align 1
@XPC_C_DISCONNECTED = common dso_local global i32 0, align 4
@xpc_arch_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@xpSuccess = common dso_local global i32 0, align 4
@XPC_P_SS_SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xpc_partition*)* @xpc_setup_ch_structures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpc_setup_ch_structures(%struct.xpc_partition* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xpc_partition*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.xpc_channel*, align 8
  %7 = alloca i16, align 2
  store %struct.xpc_partition* %0, %struct.xpc_partition** %3, align 8
  %8 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %9 = call signext i16 @XPC_PARTID(%struct.xpc_partition* %8)
  store i16 %9, i16* %7, align 2
  %10 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %11 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %10, i32 0, i32 1
  %12 = load %struct.xpc_channel*, %struct.xpc_channel** %11, align 8
  %13 = icmp ne %struct.xpc_channel* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @DBUG_ON(i32 %14)
  %16 = load i32, i32* @XPC_MAX_NCHANNELS, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 52, %17
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.xpc_channel* @kzalloc(i32 %19, i32 %20)
  %22 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %23 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %22, i32 0, i32 1
  store %struct.xpc_channel* %21, %struct.xpc_channel** %23, align 8
  %24 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %25 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %24, i32 0, i32 1
  %26 = load %struct.xpc_channel*, %struct.xpc_channel** %25, align 8
  %27 = icmp eq %struct.xpc_channel* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load i32, i32* @xpc_chan, align 4
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @xpNoMemory, align 4
  store i32 %31, i32* %2, align 4
  br label %153

32:                                               ; preds = %1
  %33 = load i32, i32* @XPC_OPENCLOSE_ARGS_SIZE, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %36 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %35, i32 0, i32 3
  %37 = call i32* @xpc_kzalloc_cacheline_aligned(i32 %33, i32 %34, %struct.xpc_channel** %36)
  %38 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %39 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %38, i32 0, i32 2
  store i32* %37, i32** %39, align 8
  %40 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %41 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %32
  %45 = load i32, i32* @xpc_chan, align 4
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @xpNoMemory, align 4
  store i32 %47, i32* %4, align 4
  br label %145

48:                                               ; preds = %32
  %49 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %50 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %49, i32 0, i32 10
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %53 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %52, i32 0, i32 9
  %54 = call i32 @spin_lock_init(i32* %53)
  %55 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %56 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %55, i32 0, i32 8
  %57 = call i32 @atomic_set(i32* %56, i32 1)
  %58 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %59 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %58, i32 0, i32 7
  %60 = call i32 @init_waitqueue_head(i32* %59)
  %61 = load i32, i32* @XPC_MAX_NCHANNELS, align 4
  %62 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %63 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %65 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %64, i32 0, i32 6
  %66 = call i32 @atomic_set(i32* %65, i32 0)
  %67 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %68 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %67, i32 0, i32 5
  %69 = call i32 @atomic_set(i32* %68, i32 0)
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %122, %48
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %73 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %125

76:                                               ; preds = %70
  %77 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %78 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %77, i32 0, i32 1
  %79 = load %struct.xpc_channel*, %struct.xpc_channel** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %79, i64 %81
  store %struct.xpc_channel* %82, %struct.xpc_channel** %6, align 8
  %83 = load i16, i16* %7, align 2
  %84 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %85 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %84, i32 0, i32 0
  store i16 %83, i16* %85, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %88 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @XPC_C_DISCONNECTED, align 4
  %90 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %91 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %90, i32 0, i32 12
  store i32 %89, i32* %91, align 4
  %92 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %93 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %92, i32 0, i32 11
  %94 = call i32 @atomic_set(i32* %93, i32 0)
  %95 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %96 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %95, i32 0, i32 10
  %97 = call i32 @atomic_set(i32* %96, i32 0)
  %98 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %99 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %98, i32 0, i32 9
  %100 = call i32 @atomic_set(i32* %99, i32 0)
  %101 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %102 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %101, i32 0, i32 8
  %103 = call i32 @atomic_set(i32* %102, i32 0)
  %104 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %105 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %104, i32 0, i32 7
  %106 = call i32 @atomic_set(i32* %105, i32 0)
  %107 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %108 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %107, i32 0, i32 6
  %109 = call i32 @spin_lock_init(i32* %108)
  %110 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %111 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %110, i32 0, i32 5
  %112 = call i32 @init_completion(i32* %111)
  %113 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %114 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %113, i32 0, i32 4
  %115 = call i32 @atomic_set(i32* %114, i32 0)
  %116 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %117 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %116, i32 0, i32 3
  %118 = call i32 @init_waitqueue_head(i32* %117)
  %119 = load %struct.xpc_channel*, %struct.xpc_channel** %6, align 8
  %120 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %119, i32 0, i32 2
  %121 = call i32 @init_waitqueue_head(i32* %120)
  br label %122

122:                                              ; preds = %76
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %5, align 4
  br label %70

125:                                              ; preds = %70
  %126 = load i32 (%struct.xpc_partition*)*, i32 (%struct.xpc_partition*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @xpc_arch_ops, i32 0, i32 0), align 8
  %127 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %128 = call i32 %126(%struct.xpc_partition* %127)
  store i32 %128, i32* %4, align 4
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* @xpSuccess, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  br label %138

133:                                              ; preds = %125
  %134 = load i32, i32* @XPC_P_SS_SETUP, align 4
  %135 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %136 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* @xpSuccess, align 4
  store i32 %137, i32* %2, align 4
  br label %153

138:                                              ; preds = %132
  %139 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %140 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %139, i32 0, i32 3
  %141 = load %struct.xpc_channel*, %struct.xpc_channel** %140, align 8
  %142 = call i32 @kfree(%struct.xpc_channel* %141)
  %143 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %144 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %143, i32 0, i32 2
  store i32* null, i32** %144, align 8
  br label %145

145:                                              ; preds = %138, %44
  %146 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %147 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %146, i32 0, i32 1
  %148 = load %struct.xpc_channel*, %struct.xpc_channel** %147, align 8
  %149 = call i32 @kfree(%struct.xpc_channel* %148)
  %150 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %151 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %150, i32 0, i32 1
  store %struct.xpc_channel* null, %struct.xpc_channel** %151, align 8
  %152 = load i32, i32* %4, align 4
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %145, %133, %28
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local signext i16 @XPC_PARTID(%struct.xpc_partition*) #1

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local %struct.xpc_channel* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32* @xpc_kzalloc_cacheline_aligned(i32, i32, %struct.xpc_channel**) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @kfree(%struct.xpc_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
