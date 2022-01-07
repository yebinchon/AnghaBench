; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_build_mpa_v1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_build_mpa_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_cm_node = type { i32, i32 }
%struct.ietf_mpa_v1 = type { i32, i32, i32, i32 }

@IEFT_MPA_KEY_REQ = common dso_local global i32 0, align 4
@IETF_MPA_KEY_SIZE = common dso_local global i32 0, align 4
@IEFT_MPA_KEY_REP = common dso_local global i32 0, align 4
@IETF_MPA_FLAGS_CRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nes_cm_node*, i8*, i32)* @build_mpa_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_mpa_v1(%struct.nes_cm_node* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.nes_cm_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ietf_mpa_v1*, align 8
  store %struct.nes_cm_node* %0, %struct.nes_cm_node** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.ietf_mpa_v1*
  store %struct.ietf_mpa_v1* %9, %struct.ietf_mpa_v1** %7, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %25 [
    i32 128, label %11
    i32 129, label %18
  ]

11:                                               ; preds = %3
  %12 = load %struct.ietf_mpa_v1*, %struct.ietf_mpa_v1** %7, align 8
  %13 = getelementptr inbounds %struct.ietf_mpa_v1, %struct.ietf_mpa_v1* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IEFT_MPA_KEY_REQ, align 4
  %16 = load i32, i32* @IETF_MPA_KEY_SIZE, align 4
  %17 = call i32 @memcpy(i32 %14, i32 %15, i32 %16)
  br label %25

18:                                               ; preds = %3
  %19 = load %struct.ietf_mpa_v1*, %struct.ietf_mpa_v1** %7, align 8
  %20 = getelementptr inbounds %struct.ietf_mpa_v1, %struct.ietf_mpa_v1* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IEFT_MPA_KEY_REP, align 4
  %23 = load i32, i32* @IETF_MPA_KEY_SIZE, align 4
  %24 = call i32 @memcpy(i32 %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %3, %18, %11
  %26 = load i32, i32* @IETF_MPA_FLAGS_CRC, align 4
  %27 = load %struct.ietf_mpa_v1*, %struct.ietf_mpa_v1** %7, align 8
  %28 = getelementptr inbounds %struct.ietf_mpa_v1, %struct.ietf_mpa_v1* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %30 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ietf_mpa_v1*, %struct.ietf_mpa_v1** %7, align 8
  %33 = getelementptr inbounds %struct.ietf_mpa_v1, %struct.ietf_mpa_v1* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.nes_cm_node*, %struct.nes_cm_node** %4, align 8
  %35 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @htons(i32 %36)
  %38 = load %struct.ietf_mpa_v1*, %struct.ietf_mpa_v1** %7, align 8
  %39 = getelementptr inbounds %struct.ietf_mpa_v1, %struct.ietf_mpa_v1* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
