; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_setup_rng.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_setup_rng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.device = type { %struct.rng_info* }
%struct.rng_info = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"/dev/random\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"rng\00", align 1
@VIRTIO_ID_RNG = common dso_local global i32 0, align 4
@VIRTQUEUE_NUM = common dso_local global i32 0, align 4
@rng_input = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"device %u: rng\0A\00", align 1
@devices = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_rng to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_rng() #0 {
  %1 = alloca %struct.device*, align 8
  %2 = alloca %struct.rng_info*, align 8
  %3 = call %struct.rng_info* @malloc(i32 4)
  store %struct.rng_info* %3, %struct.rng_info** %2, align 8
  %4 = load i32, i32* @O_RDONLY, align 4
  %5 = call i32 @open_or_die(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load %struct.rng_info*, %struct.rng_info** %2, align 8
  %7 = getelementptr inbounds %struct.rng_info, %struct.rng_info* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @VIRTIO_ID_RNG, align 4
  %9 = call %struct.device* @new_device(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  store %struct.device* %9, %struct.device** %1, align 8
  %10 = load %struct.rng_info*, %struct.rng_info** %2, align 8
  %11 = load %struct.device*, %struct.device** %1, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  store %struct.rng_info* %10, %struct.rng_info** %12, align 8
  %13 = load %struct.device*, %struct.device** %1, align 8
  %14 = load i32, i32* @VIRTQUEUE_NUM, align 4
  %15 = load i32, i32* @rng_input, align 4
  %16 = call i32 @add_virtqueue(%struct.device* %13, i32 %14, i32 %15)
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @devices, i32 0, i32 0), align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @devices, i32 0, i32 0), align 4
  %19 = call i32 @verbose(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  ret void
}

declare dso_local %struct.rng_info* @malloc(i32) #1

declare dso_local i32 @open_or_die(i8*, i32) #1

declare dso_local %struct.device* @new_device(i8*, i32) #1

declare dso_local i32 @add_virtqueue(%struct.device*, i32, i32) #1

declare dso_local i32 @verbose(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
