; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvcs.c_hvcs_set_pi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvcs.c_hvcs_set_pi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvcs_partner_info = type { i32*, i32, i32 }
%struct.hvcs_struct = type { i32*, i32, i32 }

@HVCS_CLC_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hvcs_partner_info*, %struct.hvcs_struct*)* @hvcs_set_pi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hvcs_set_pi(%struct.hvcs_partner_info* %0, %struct.hvcs_struct* %1) #0 {
  %3 = alloca %struct.hvcs_partner_info*, align 8
  %4 = alloca %struct.hvcs_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.hvcs_partner_info* %0, %struct.hvcs_partner_info** %3, align 8
  store %struct.hvcs_struct* %1, %struct.hvcs_struct** %4, align 8
  %6 = load %struct.hvcs_partner_info*, %struct.hvcs_partner_info** %3, align 8
  %7 = getelementptr inbounds %struct.hvcs_partner_info, %struct.hvcs_partner_info* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.hvcs_struct*, %struct.hvcs_struct** %4, align 8
  %10 = getelementptr inbounds %struct.hvcs_struct, %struct.hvcs_struct* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load %struct.hvcs_partner_info*, %struct.hvcs_partner_info** %3, align 8
  %12 = getelementptr inbounds %struct.hvcs_partner_info, %struct.hvcs_partner_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.hvcs_struct*, %struct.hvcs_struct** %4, align 8
  %15 = getelementptr inbounds %struct.hvcs_struct, %struct.hvcs_struct* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load %struct.hvcs_partner_info*, %struct.hvcs_partner_info** %3, align 8
  %17 = getelementptr inbounds %struct.hvcs_partner_info, %struct.hvcs_partner_info* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = call i32 @strlen(i32* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @HVCS_CLC_LENGTH, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @HVCS_CLC_LENGTH, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %24, %2
  %27 = load %struct.hvcs_struct*, %struct.hvcs_struct** %4, align 8
  %28 = getelementptr inbounds %struct.hvcs_struct, %struct.hvcs_struct* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load %struct.hvcs_partner_info*, %struct.hvcs_partner_info** %3, align 8
  %32 = getelementptr inbounds %struct.hvcs_partner_info, %struct.hvcs_partner_info* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  %37 = call i32 @strncpy(i32* %30, i32* %34, i32 %36)
  ret void
}

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @strncpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
