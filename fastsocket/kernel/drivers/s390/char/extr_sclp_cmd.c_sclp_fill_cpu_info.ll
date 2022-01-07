; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_cmd.c_sclp_fill_cpu_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_cmd.c_sclp_fill_cpu_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sclp_cpu_info = type { i32, i32, i32, i32, i32 }
%struct.read_cpu_info_sccb = type { i32, i32, i32 }

@sclp_fac84 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sclp_cpu_info*, %struct.read_cpu_info_sccb*)* @sclp_fill_cpu_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sclp_fill_cpu_info(%struct.sclp_cpu_info* %0, %struct.read_cpu_info_sccb* %1) #0 {
  %3 = alloca %struct.sclp_cpu_info*, align 8
  %4 = alloca %struct.read_cpu_info_sccb*, align 8
  %5 = alloca i8*, align 8
  store %struct.sclp_cpu_info* %0, %struct.sclp_cpu_info** %3, align 8
  store %struct.read_cpu_info_sccb* %1, %struct.read_cpu_info_sccb** %4, align 8
  %6 = load %struct.read_cpu_info_sccb*, %struct.read_cpu_info_sccb** %4, align 8
  %7 = bitcast %struct.read_cpu_info_sccb* %6 to i8*
  store i8* %7, i8** %5, align 8
  %8 = load %struct.sclp_cpu_info*, %struct.sclp_cpu_info** %3, align 8
  %9 = call i32 @memset(%struct.sclp_cpu_info* %8, i32 0, i32 20)
  %10 = load %struct.read_cpu_info_sccb*, %struct.read_cpu_info_sccb** %4, align 8
  %11 = getelementptr inbounds %struct.read_cpu_info_sccb, %struct.read_cpu_info_sccb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.sclp_cpu_info*, %struct.sclp_cpu_info** %3, align 8
  %14 = getelementptr inbounds %struct.sclp_cpu_info, %struct.sclp_cpu_info* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.read_cpu_info_sccb*, %struct.read_cpu_info_sccb** %4, align 8
  %16 = getelementptr inbounds %struct.read_cpu_info_sccb, %struct.read_cpu_info_sccb* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sclp_cpu_info*, %struct.sclp_cpu_info** %3, align 8
  %19 = getelementptr inbounds %struct.sclp_cpu_info, %struct.sclp_cpu_info* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.read_cpu_info_sccb*, %struct.read_cpu_info_sccb** %4, align 8
  %21 = getelementptr inbounds %struct.read_cpu_info_sccb, %struct.read_cpu_info_sccb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.read_cpu_info_sccb*, %struct.read_cpu_info_sccb** %4, align 8
  %24 = getelementptr inbounds %struct.read_cpu_info_sccb, %struct.read_cpu_info_sccb* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %22, %25
  %27 = load %struct.sclp_cpu_info*, %struct.sclp_cpu_info** %3, align 8
  %28 = getelementptr inbounds %struct.sclp_cpu_info, %struct.sclp_cpu_info* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @sclp_fac84, align 4
  %30 = and i32 %29, 1
  %31 = load %struct.sclp_cpu_info*, %struct.sclp_cpu_info** %3, align 8
  %32 = getelementptr inbounds %struct.sclp_cpu_info, %struct.sclp_cpu_info* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.sclp_cpu_info*, %struct.sclp_cpu_info** %3, align 8
  %34 = getelementptr inbounds %struct.sclp_cpu_info, %struct.sclp_cpu_info* %33, i32 0, i32 4
  %35 = load i8*, i8** %5, align 8
  %36 = load %struct.read_cpu_info_sccb*, %struct.read_cpu_info_sccb** %4, align 8
  %37 = getelementptr inbounds %struct.read_cpu_info_sccb, %struct.read_cpu_info_sccb* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %35, i64 %39
  %41 = load %struct.sclp_cpu_info*, %struct.sclp_cpu_info** %3, align 8
  %42 = getelementptr inbounds %struct.sclp_cpu_info, %struct.sclp_cpu_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = call i32 @memcpy(i32* %34, i8* %40, i32 %46)
  ret void
}

declare dso_local i32 @memset(%struct.sclp_cpu_info*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
