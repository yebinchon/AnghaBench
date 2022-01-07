; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_encoders.c_radeon_atombios_set_dig_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_encoders.c_radeon_atombios_set_dig_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_encoder_atom_dig = type { i32, i32, i32 }
%struct.radeon_encoder = type { i32 }

@ENUM_ID_MASK = common dso_local global i32 0, align 4
@ENUM_ID_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.radeon_encoder_atom_dig* (%struct.radeon_encoder*)* @radeon_atombios_set_dig_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.radeon_encoder_atom_dig* @radeon_atombios_set_dig_info(%struct.radeon_encoder* %0) #0 {
  %2 = alloca %struct.radeon_encoder_atom_dig*, align 8
  %3 = alloca %struct.radeon_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_encoder_atom_dig*, align 8
  store %struct.radeon_encoder* %0, %struct.radeon_encoder** %3, align 8
  %6 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ENUM_ID_MASK, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @ENUM_ID_SHIFT, align 4
  %12 = ashr i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.radeon_encoder_atom_dig* @kzalloc(i32 12, i32 %13)
  store %struct.radeon_encoder_atom_dig* %14, %struct.radeon_encoder_atom_dig** %5, align 8
  %15 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %5, align 8
  %16 = icmp ne %struct.radeon_encoder_atom_dig* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store %struct.radeon_encoder_atom_dig* null, %struct.radeon_encoder_atom_dig** %2, align 8
  br label %33

18:                                               ; preds = %1
  %19 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %5, align 8
  %20 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %5, align 8
  %22 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %21, i32 0, i32 1
  store i32 -1, i32* %22, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %5, align 8
  %27 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %26, i32 0, i32 2
  store i32 1, i32* %27, align 4
  br label %31

28:                                               ; preds = %18
  %29 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %5, align 8
  %30 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %29, i32 0, i32 2
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %5, align 8
  store %struct.radeon_encoder_atom_dig* %32, %struct.radeon_encoder_atom_dig** %2, align 8
  br label %33

33:                                               ; preds = %31, %17
  %34 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %2, align 8
  ret %struct.radeon_encoder_atom_dig* %34
}

declare dso_local %struct.radeon_encoder_atom_dig* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
