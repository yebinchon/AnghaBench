; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc.c_chsc_chp_vary.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc.c_chsc_chp_vary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chp_id = type { i32 }
%struct.channel_path = type { i32 }
%struct.chp_link = type { %struct.chp_id }

@s390_subchannel_vary_chpid_on = common dso_local global i32 0, align 4
@__s390_vary_chpid_on = common dso_local global i32* null, align 8
@s390_subchannel_vary_chpid_off = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chsc_chp_vary(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.chp_id, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.channel_path*, align 8
  %6 = alloca %struct.chp_link, align 4
  %7 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %3, i32 0, i32 0
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %4, align 4
  %8 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %3, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.channel_path* @chpid_to_chp(i32 %9)
  store %struct.channel_path* %10, %struct.channel_path** %5, align 8
  %11 = call i32 @memset(%struct.chp_link* %6, i32 0, i32 4)
  %12 = getelementptr inbounds %struct.chp_link, %struct.chp_link* %6, i32 0, i32 0
  %13 = bitcast %struct.chp_id* %12 to i8*
  %14 = bitcast %struct.chp_id* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 4, i1 false)
  %15 = call i32 (...) @css_wait_for_slow_path()
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %20 = call i32 @chp_update_desc(%struct.channel_path* %19)
  %21 = load i32, i32* @s390_subchannel_vary_chpid_on, align 4
  %22 = load i32*, i32** @__s390_vary_chpid_on, align 8
  %23 = call i32 @for_each_subchannel_staged(i32 %21, i32* %22, %struct.chp_link* %6)
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @s390_subchannel_vary_chpid_off, align 4
  %26 = call i32 @for_each_subchannel_staged(i32 %25, i32* null, %struct.chp_link* %6)
  br label %27

27:                                               ; preds = %24, %18
  ret i32 0
}

declare dso_local %struct.channel_path* @chpid_to_chp(i32) #1

declare dso_local i32 @memset(%struct.chp_link*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @css_wait_for_slow_path(...) #1

declare dso_local i32 @chp_update_desc(%struct.channel_path*) #1

declare dso_local i32 @for_each_subchannel_staged(i32, i32*, %struct.chp_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
