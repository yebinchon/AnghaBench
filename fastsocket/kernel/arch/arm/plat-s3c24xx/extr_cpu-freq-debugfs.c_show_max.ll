; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_cpu-freq-debugfs.c_show_max.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-s3c24xx/extr_cpu-freq-debugfs.c_show_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.s3c_freq = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"MAX: F=%lu, H=%lu, P=%lu, A=%lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.s3c_freq*)* @show_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_max(%struct.seq_file* %0, %struct.s3c_freq* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.s3c_freq*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.s3c_freq* %1, %struct.s3c_freq** %4, align 8
  %5 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %6 = load %struct.s3c_freq*, %struct.s3c_freq** %4, align 8
  %7 = getelementptr inbounds %struct.s3c_freq, %struct.s3c_freq* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.s3c_freq*, %struct.s3c_freq** %4, align 8
  %10 = getelementptr inbounds %struct.s3c_freq, %struct.s3c_freq* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.s3c_freq*, %struct.s3c_freq** %4, align 8
  %13 = getelementptr inbounds %struct.s3c_freq, %struct.s3c_freq* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.s3c_freq*, %struct.s3c_freq** %4, align 8
  %16 = getelementptr inbounds %struct.s3c_freq, %struct.s3c_freq* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @seq_printf(%struct.seq_file* %5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %11, i32 %14, i32 %17)
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
