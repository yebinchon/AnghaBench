; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c_list_version_get_needed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c_list_version_get_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_type = type { i32 }

@ALIGN_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.target_type*, i8*)* @list_version_get_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_version_get_needed(%struct.target_type* %0, i8* %1) #0 {
  %3 = alloca %struct.target_type*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  store %struct.target_type* %0, %struct.target_type** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to i64*
  store i64* %7, i64** %5, align 8
  %8 = load i64*, i64** %5, align 8
  %9 = load i64, i64* %8, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %8, align 8
  %11 = load %struct.target_type*, %struct.target_type** %3, align 8
  %12 = getelementptr inbounds %struct.target_type, %struct.target_type* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @strlen(i32 %13)
  %15 = load i64*, i64** %5, align 8
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %16, %14
  store i64 %17, i64* %15, align 8
  %18 = load i64, i64* @ALIGN_MASK, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = load i64, i64* %19, align 8
  %21 = add i64 %20, %18
  store i64 %21, i64* %19, align 8
  ret void
}

declare dso_local i64 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
