; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_get_chctl_all_flags_uv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_get_chctl_all_flags_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i32, %union.xpc_channel_ctl_flags }
%union.xpc_channel_ctl_flags = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.xpc_partition*)* @xpc_get_chctl_all_flags_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xpc_get_chctl_all_flags_uv(%struct.xpc_partition* %0) #0 {
  %2 = alloca %struct.xpc_partition*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %union.xpc_channel_ctl_flags, align 8
  store %struct.xpc_partition* %0, %struct.xpc_partition** %2, align 8
  %5 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %6 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %5, i32 0, i32 0
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %10 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %9, i32 0, i32 1
  %11 = bitcast %union.xpc_channel_ctl_flags* %4 to i8*
  %12 = bitcast %union.xpc_channel_ctl_flags* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 8, i1 false)
  %13 = bitcast %union.xpc_channel_ctl_flags* %4 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %18 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %17, i32 0, i32 1
  %19 = bitcast %union.xpc_channel_ctl_flags* %18 to i64*
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %22 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %21, i32 0, i32 0
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = bitcast %union.xpc_channel_ctl_flags* %4 to i64*
  %26 = load i64, i64* %25, align 8
  ret i64 %26
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
