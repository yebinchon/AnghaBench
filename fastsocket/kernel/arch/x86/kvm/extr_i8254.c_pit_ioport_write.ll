; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_i8254.c_pit_ioport_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_i8254.c_pit_ioport_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_io_device = type { i32 }
%struct.kvm_pit = type { %struct.kvm*, %struct.kvm_kpit_state }
%struct.kvm = type { i32 }
%struct.kvm_kpit_state = type { i32, %struct.kvm_kpit_channel_state* }
%struct.kvm_kpit_channel_state = type { i32, i32, i32, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@KVM_PIT_CHANNEL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"pit: write addr is 0x%x, len is %d, val is 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_io_device*, i32, i32, i8*)* @pit_ioport_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pit_ioport_write(%struct.kvm_io_device* %0, i32 %1, i32 %2, i8* %3) #0 {
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
  %16 = alloca i32, align 4
  store %struct.kvm_io_device* %0, %struct.kvm_io_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %17 = load %struct.kvm_io_device*, %struct.kvm_io_device** %6, align 8
  %18 = call %struct.kvm_pit* @dev_to_pit(%struct.kvm_io_device* %17)
  store %struct.kvm_pit* %18, %struct.kvm_pit** %10, align 8
  %19 = load %struct.kvm_pit*, %struct.kvm_pit** %10, align 8
  %20 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %19, i32 0, i32 1
  store %struct.kvm_kpit_state* %20, %struct.kvm_kpit_state** %11, align 8
  %21 = load %struct.kvm_pit*, %struct.kvm_pit** %10, align 8
  %22 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %21, i32 0, i32 0
  %23 = load %struct.kvm*, %struct.kvm** %22, align 8
  store %struct.kvm* %23, %struct.kvm** %12, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @pit_in_range(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %188

33:                                               ; preds = %4
  %34 = load i32, i32* %16, align 4
  %35 = and i32 %34, 255
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* @KVM_PIT_CHANNEL_MASK, align 4
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %11, align 8
  %40 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load i32, i32* %16, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %33
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %16, align 4
  %48 = call i32 @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %33
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %52, label %143

52:                                               ; preds = %49
  %53 = load i32, i32* %16, align 4
  %54 = ashr i32 %53, 6
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp eq i32 %55, 3
  br i1 %56, label %57, label %95

57:                                               ; preds = %52
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %91, %57
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %59, 3
  br i1 %60, label %61, label %94

61:                                               ; preds = %58
  %62 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %11, align 8
  %63 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %62, i32 0, i32 1
  %64 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %63, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %64, i64 %66
  store %struct.kvm_kpit_channel_state* %67, %struct.kvm_kpit_channel_state** %15, align 8
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* %13, align 4
  %70 = shl i32 2, %69
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %61
  %74 = load i32, i32* %16, align 4
  %75 = and i32 %74, 32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load %struct.kvm*, %struct.kvm** %12, align 8
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @pit_latch_count(%struct.kvm* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %73
  %82 = load i32, i32* %16, align 4
  %83 = and i32 %82, 16
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load %struct.kvm*, %struct.kvm** %12, align 8
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @pit_latch_status(%struct.kvm* %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %81
  br label %90

90:                                               ; preds = %89, %61
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %58

94:                                               ; preds = %58
  br label %142

95:                                               ; preds = %52
  %96 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %11, align 8
  %97 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %96, i32 0, i32 1
  %98 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %98, i64 %100
  store %struct.kvm_kpit_channel_state* %101, %struct.kvm_kpit_channel_state** %15, align 8
  %102 = load i32, i32* %16, align 4
  %103 = ashr i32 %102, 4
  %104 = load i32, i32* @KVM_PIT_CHANNEL_MASK, align 4
  %105 = and i32 %103, %104
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %95
  %109 = load %struct.kvm*, %struct.kvm** %12, align 8
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @pit_latch_count(%struct.kvm* %109, i32 %110)
  br label %141

112:                                              ; preds = %95
  %113 = load i32, i32* %14, align 4
  %114 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %15, align 8
  %115 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %15, align 8
  %118 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %14, align 4
  %120 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %15, align 8
  %121 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %16, align 4
  %123 = ashr i32 %122, 1
  %124 = and i32 %123, 7
  %125 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %15, align 8
  %126 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %15, align 8
  %128 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = icmp sgt i32 %129, 5
  br i1 %130, label %131, label %136

131:                                              ; preds = %112
  %132 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %15, align 8
  %133 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %134, 4
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %131, %112
  %137 = load i32, i32* %16, align 4
  %138 = and i32 %137, 1
  %139 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %15, align 8
  %140 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %139, i32 0, i32 4
  store i32 %138, i32* %140, align 4
  br label %141

141:                                              ; preds = %136, %108
  br label %142

142:                                              ; preds = %141, %94
  br label %184

143:                                              ; preds = %49
  %144 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %11, align 8
  %145 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %144, i32 0, i32 1
  %146 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %145, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %146, i64 %148
  store %struct.kvm_kpit_channel_state* %149, %struct.kvm_kpit_channel_state** %15, align 8
  %150 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %15, align 8
  %151 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  switch i32 %152, label %153 [
    i32 131, label %154
    i32 130, label %159
    i32 129, label %165
    i32 128, label %171
  ]

153:                                              ; preds = %143
  br label %154

154:                                              ; preds = %143, %153
  %155 = load %struct.kvm*, %struct.kvm** %12, align 8
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* %16, align 4
  %158 = call i32 @pit_load_count(%struct.kvm* %155, i32 %156, i32 %157)
  br label %183

159:                                              ; preds = %143
  %160 = load %struct.kvm*, %struct.kvm** %12, align 8
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* %16, align 4
  %163 = shl i32 %162, 8
  %164 = call i32 @pit_load_count(%struct.kvm* %160, i32 %161, i32 %163)
  br label %183

165:                                              ; preds = %143
  %166 = load i32, i32* %16, align 4
  %167 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %15, align 8
  %168 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %167, i32 0, i32 5
  store i32 %166, i32* %168, align 4
  %169 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %15, align 8
  %170 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %169, i32 0, i32 2
  store i32 128, i32* %170, align 4
  br label %183

171:                                              ; preds = %143
  %172 = load %struct.kvm*, %struct.kvm** %12, align 8
  %173 = load i32, i32* %7, align 4
  %174 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %15, align 8
  %175 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %16, align 4
  %178 = shl i32 %177, 8
  %179 = or i32 %176, %178
  %180 = call i32 @pit_load_count(%struct.kvm* %172, i32 %173, i32 %179)
  %181 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %15, align 8
  %182 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %181, i32 0, i32 2
  store i32 129, i32* %182, align 4
  br label %183

183:                                              ; preds = %171, %165, %159, %154
  br label %184

184:                                              ; preds = %183, %142
  %185 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %11, align 8
  %186 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %185, i32 0, i32 0
  %187 = call i32 @mutex_unlock(i32* %186)
  store i32 0, i32* %5, align 4
  br label %188

188:                                              ; preds = %184, %30
  %189 = load i32, i32* %5, align 4
  ret i32 %189
}

declare dso_local %struct.kvm_pit* @dev_to_pit(%struct.kvm_io_device*) #1

declare dso_local i32 @pit_in_range(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @pit_latch_count(%struct.kvm*, i32) #1

declare dso_local i32 @pit_latch_status(%struct.kvm*, i32) #1

declare dso_local i32 @pit_load_count(%struct.kvm*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
