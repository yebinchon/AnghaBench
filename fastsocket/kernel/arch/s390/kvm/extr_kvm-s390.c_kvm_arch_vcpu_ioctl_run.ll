; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_vcpu_ioctl_run.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_vcpu_ioctl_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i64, %struct.TYPE_16__, i64, %struct.TYPE_15__, %struct.TYPE_11__*, i32, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32** }
%struct.kvm_run = type { i32, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32 }

@KVM_REQ_MMU_RELOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"no memory registered to run vcpu\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@CPUSTAT_RUNNING = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@SIE_INTERCEPT_RERUNVCPU = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@EREMOTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_vcpu_ioctl_run(%struct.kvm_vcpu* %0, %struct.kvm_run* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_run*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_run* %1, %struct.kvm_run** %5, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %9 = call i32 @vcpu_load(%struct.kvm_vcpu* %8)
  br label %10

10:                                               ; preds = %118, %2
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = load i32, i32* @KVM_REQ_MMU_RELOAD, align 4
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 6
  %19 = call i64 @test_and_clear_bit(i32 %16, i64* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %23 = call i32 @kvm_s390_vcpu_set_mem(%struct.kvm_vcpu* %22)
  br label %24

24:                                               ; preds = %21, %15
  br label %25

25:                                               ; preds = %24, %10
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %27 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %25
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %35 = call i32 @vcpu_put(%struct.kvm_vcpu* %34)
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %37 = call i32 @VCPU_EVENT(%struct.kvm_vcpu* %36, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %207

40:                                               ; preds = %25
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %42 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i32, i32* @SIG_SETMASK, align 4
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %48 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %47, i32 0, i32 5
  %49 = call i32 @sigprocmask(i32 %46, i32* %48, i32* %7)
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i32, i32* @CPUSTAT_RUNNING, align 4
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %53 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 4
  %57 = call i32 @atomic_set_mask(i32 %51, i32* %56)
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %59 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %58, i32 0, i32 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32**, i32*** %63, align 8
  %65 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %66 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32*, i32** %64, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  %71 = zext i1 %70 to i32
  %72 = call i32 @BUG_ON(i32 %71)
  %73 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %74 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  switch i32 %75, label %77 [
    i32 129, label %76
    i32 128, label %76
    i32 131, label %76
    i32 130, label %76
  ]

76:                                               ; preds = %50, %50, %50, %50
  br label %79

77:                                               ; preds = %50
  %78 = call i32 (...) @BUG()
  br label %79

79:                                               ; preds = %77, %76
  %80 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %81 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %84 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  store i32 %82, i32* %88, align 4
  %89 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %90 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %93 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  store i32 %91, i32* %97, align 4
  %98 = call i32 (...) @might_fault()
  br label %99

99:                                               ; preds = %112, %79
  %100 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %101 = call i32 @__vcpu_run(%struct.kvm_vcpu* %100)
  %102 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %103 = call i32 @kvm_handle_sie_intercept(%struct.kvm_vcpu* %102)
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %99
  %105 = load i32, i32* @current, align 4
  %106 = call i64 @signal_pending(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  br label %112

112:                                              ; preds = %108, %104
  %113 = phi i1 [ false, %104 ], [ %111, %108 ]
  br i1 %113, label %99, label %114

114:                                              ; preds = %112
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @SIE_INTERCEPT_RERUNVCPU, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  br label %10

119:                                              ; preds = %114
  %120 = load i32, i32* @current, align 4
  %121 = call i64 @signal_pending(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %119
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %123
  %127 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %128 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %127, i32 0, i32 0
  store i32 131, i32* %128, align 4
  %129 = load i32, i32* @EINTR, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %126, %123, %119
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @ENOTSUPP, align 4
  %134 = sub nsw i32 0, %133
  %135 = icmp eq i32 %132, %134
  br i1 %135, label %136, label %166

136:                                              ; preds = %131
  %137 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %138 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %137, i32 0, i32 0
  store i32 129, i32* %138, align 4
  %139 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %140 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %146 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 2
  store i32 %144, i32* %147, align 4
  %148 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %149 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %155 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 1
  store i32 %153, i32* %156, align 4
  %157 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %158 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %164 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  store i32 %162, i32* %165, align 4
  store i32 0, i32* %6, align 4
  br label %166

166:                                              ; preds = %136, %131
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* @EREMOTE, align 4
  %169 = sub nsw i32 0, %168
  %170 = icmp eq i32 %167, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  store i32 0, i32* %6, align 4
  br label %172

172:                                              ; preds = %171, %166
  %173 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %174 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %181 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %180, i32 0, i32 2
  store i32 %179, i32* %181, align 4
  %182 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %183 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.kvm_run*, %struct.kvm_run** %5, align 8
  %190 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 4
  %191 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %192 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %172
  %196 = load i32, i32* @SIG_SETMASK, align 4
  %197 = call i32 @sigprocmask(i32 %196, i32* %7, i32* null)
  br label %198

198:                                              ; preds = %195, %172
  %199 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %200 = call i32 @vcpu_put(%struct.kvm_vcpu* %199)
  %201 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %202 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %203, align 8
  %206 = load i32, i32* %6, align 4
  store i32 %206, i32* %3, align 4
  br label %207

207:                                              ; preds = %198, %33
  %208 = load i32, i32* %3, align 4
  ret i32 %208
}

declare dso_local i32 @vcpu_load(%struct.kvm_vcpu*) #1

declare dso_local i64 @test_and_clear_bit(i32, i64*) #1

declare dso_local i32 @kvm_s390_vcpu_set_mem(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_put(%struct.kvm_vcpu*) #1

declare dso_local i32 @VCPU_EVENT(%struct.kvm_vcpu*, i32, i8*, i8*) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @atomic_set_mask(i32, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @might_fault(...) #1

declare dso_local i32 @__vcpu_run(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_handle_sie_intercept(%struct.kvm_vcpu*) #1

declare dso_local i64 @signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
