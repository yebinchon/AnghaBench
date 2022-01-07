; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_i8254.c_pit_ioport_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_i8254.c_pit_ioport_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_io_device = type { i32 }
%struct.kvm_pit = type { %struct.kvm*, %struct.kvm_kpit_state }
%struct.kvm = type { i32 }
%struct.kvm_kpit_state = type { i32, %struct.kvm_kpit_channel_state* }
%struct.kvm_kpit_channel_state = type { i32, i32, i32, i32, i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@KVM_PIT_CHANNEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_io_device*, i32, i32, i8*)* @pit_ioport_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pit_ioport_read(%struct.kvm_io_device* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_io_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.kvm_pit*, align 8
  %11 = alloca %struct.kvm_kpit_state*, align 8
  %12 = alloca %struct.kvm*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.kvm_kpit_channel_state*, align 8
  store %struct.kvm_io_device* %0, %struct.kvm_io_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %16 = load %struct.kvm_io_device*, %struct.kvm_io_device** %6, align 8
  %17 = call %struct.kvm_pit* @dev_to_pit(%struct.kvm_io_device* %16)
  store %struct.kvm_pit* %17, %struct.kvm_pit** %10, align 8
  %18 = load %struct.kvm_pit*, %struct.kvm_pit** %10, align 8
  %19 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %18, i32 0, i32 1
  store %struct.kvm_kpit_state* %19, %struct.kvm_kpit_state** %11, align 8
  %20 = load %struct.kvm_pit*, %struct.kvm_pit** %10, align 8
  %21 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %20, i32 0, i32 0
  %22 = load %struct.kvm*, %struct.kvm** %21, align 8
  store %struct.kvm* %22, %struct.kvm** %12, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @pit_in_range(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %138

29:                                               ; preds = %4
  %30 = load i32, i32* @KVM_PIT_CHANNEL_MASK, align 4
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 3
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %138

36:                                               ; preds = %29
  %37 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %11, align 8
  %38 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %37, i32 0, i32 1
  %39 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %39, i64 %41
  store %struct.kvm_kpit_channel_state* %42, %struct.kvm_kpit_channel_state** %15, align 8
  %43 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %11, align 8
  %44 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %43, i32 0, i32 0
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %15, align 8
  %47 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %36
  %51 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %15, align 8
  %52 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %51, i32 0, i32 4
  store i64 0, i64* %52, align 8
  %53 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %15, align 8
  %54 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %13, align 4
  br label %125

56:                                               ; preds = %36
  %57 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %15, align 8
  %58 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %88

61:                                               ; preds = %56
  %62 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %15, align 8
  %63 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %65 [
    i32 131, label %66
    i32 130, label %73
    i32 129, label %80
  ]

65:                                               ; preds = %61
  br label %66

66:                                               ; preds = %61, %65
  %67 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %15, align 8
  %68 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, 255
  store i32 %70, i32* %13, align 4
  %71 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %15, align 8
  %72 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %71, i32 0, i32 1
  store i32 0, i32* %72, align 4
  br label %87

73:                                               ; preds = %61
  %74 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %15, align 8
  %75 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = ashr i32 %76, 8
  store i32 %77, i32* %13, align 4
  %78 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %15, align 8
  %79 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %78, i32 0, i32 1
  store i32 0, i32* %79, align 4
  br label %87

80:                                               ; preds = %61
  %81 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %15, align 8
  %82 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, 255
  store i32 %84, i32* %13, align 4
  %85 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %15, align 8
  %86 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %85, i32 0, i32 1
  store i32 130, i32* %86, align 4
  br label %87

87:                                               ; preds = %80, %73, %66
  br label %124

88:                                               ; preds = %56
  %89 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %15, align 8
  %90 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  switch i32 %91, label %92 [
    i32 131, label %93
    i32 130, label %99
    i32 129, label %106
    i32 128, label %114
  ]

92:                                               ; preds = %88
  br label %93

93:                                               ; preds = %88, %92
  %94 = load %struct.kvm*, %struct.kvm** %12, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @pit_get_count(%struct.kvm* %94, i32 %95)
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = and i32 %97, 255
  store i32 %98, i32* %13, align 4
  br label %123

99:                                               ; preds = %88
  %100 = load %struct.kvm*, %struct.kvm** %12, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @pit_get_count(%struct.kvm* %100, i32 %101)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = ashr i32 %103, 8
  %105 = and i32 %104, 255
  store i32 %105, i32* %13, align 4
  br label %123

106:                                              ; preds = %88
  %107 = load %struct.kvm*, %struct.kvm** %12, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @pit_get_count(%struct.kvm* %107, i32 %108)
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %14, align 4
  %111 = and i32 %110, 255
  store i32 %111, i32* %13, align 4
  %112 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %15, align 8
  %113 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %112, i32 0, i32 3
  store i32 128, i32* %113, align 4
  br label %123

114:                                              ; preds = %88
  %115 = load %struct.kvm*, %struct.kvm** %12, align 8
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @pit_get_count(%struct.kvm* %115, i32 %116)
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %14, align 4
  %119 = ashr i32 %118, 8
  %120 = and i32 %119, 255
  store i32 %120, i32* %13, align 4
  %121 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %15, align 8
  %122 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %121, i32 0, i32 3
  store i32 129, i32* %122, align 4
  br label %123

123:                                              ; preds = %114, %106, %99, %93
  br label %124

124:                                              ; preds = %123, %87
  br label %125

125:                                              ; preds = %124, %50
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = icmp ugt i64 %127, 4
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  store i32 4, i32* %8, align 4
  br label %130

130:                                              ; preds = %129, %125
  %131 = load i8*, i8** %9, align 8
  %132 = bitcast i32* %13 to i8*
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @memcpy(i8* %131, i8* %132, i32 %133)
  %135 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %11, align 8
  %136 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %135, i32 0, i32 0
  %137 = call i32 @mutex_unlock(i32* %136)
  store i32 0, i32* %5, align 4
  br label %138

138:                                              ; preds = %130, %35, %26
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local %struct.kvm_pit* @dev_to_pit(%struct.kvm_io_device*) #1

declare dso_local i32 @pit_in_range(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pit_get_count(%struct.kvm*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
