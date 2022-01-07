; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/kernel/extr_signal.c_rt_restore_ucontext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/kernel/extr_signal.c_rt_restore_ucontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.switch_stack = type { i32, i32, i32, i32, i32, i32 }
%struct.ucontext = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@do_no_restart_syscall = common dso_local global i32 0, align 4
@MCONTEXT_VERSION = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, %struct.switch_stack*, %struct.ucontext*, i32*)* @rt_restore_ucontext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_restore_ucontext(%struct.pt_regs* %0, %struct.switch_stack* %1, %struct.ucontext* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca %struct.switch_stack*, align 8
  %8 = alloca %struct.ucontext*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %6, align 8
  store %struct.switch_stack* %1, %struct.switch_stack** %7, align 8
  store %struct.ucontext* %2, %struct.ucontext** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.ucontext*, %struct.ucontext** %8, align 8
  %15 = getelementptr inbounds %struct.ucontext, %struct.ucontext* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %11, align 8
  %18 = load i32, i32* @do_no_restart_syscall, align 4
  %19 = call %struct.TYPE_6__* (...) @current_thread_info()
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.ucontext*, %struct.ucontext** %8, align 8
  %24 = getelementptr inbounds %struct.ucontext, %struct.ucontext* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = call i32 @__get_user(i32 %22, i32* %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @MCONTEXT_VERSION, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  br label %208

31:                                               ; preds = %4
  %32 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %33 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = call i32 @__get_user(i32 %34, i32* %36)
  %38 = load i32, i32* %13, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %13, align 4
  %40 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %41 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %11, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = call i32 @__get_user(i32 %42, i32* %44)
  %46 = load i32, i32* %13, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %13, align 4
  %48 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %49 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = call i32 @__get_user(i32 %50, i32* %52)
  %54 = load i32, i32* %13, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %13, align 4
  %56 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %57 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  %61 = call i32 @__get_user(i32 %58, i32* %60)
  %62 = load i32, i32* %13, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %13, align 4
  %64 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %65 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %11, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  %69 = call i32 @__get_user(i32 %66, i32* %68)
  %70 = load i32, i32* %13, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %13, align 4
  %72 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %73 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %11, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 5
  %77 = call i32 @__get_user(i32 %74, i32* %76)
  %78 = load i32, i32* %13, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %13, align 4
  %80 = load %struct.switch_stack*, %struct.switch_stack** %7, align 8
  %81 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 6
  %85 = call i32 @__get_user(i32 %82, i32* %84)
  %86 = load i32, i32* %13, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %13, align 4
  %88 = load %struct.switch_stack*, %struct.switch_stack** %7, align 8
  %89 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %11, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 7
  %93 = call i32 @__get_user(i32 %90, i32* %92)
  %94 = load i32, i32* %13, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %13, align 4
  %96 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %97 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %11, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 8
  %101 = call i32 @__get_user(i32 %98, i32* %100)
  %102 = load i32, i32* %13, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %13, align 4
  %104 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %105 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %11, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 9
  %109 = call i32 @__get_user(i32 %106, i32* %108)
  %110 = load i32, i32* %13, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %13, align 4
  %112 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %113 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %112, i32 0, i32 8
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %11, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 10
  %117 = call i32 @__get_user(i32 %114, i32* %116)
  %118 = load i32, i32* %13, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %13, align 4
  %120 = load %struct.switch_stack*, %struct.switch_stack** %7, align 8
  %121 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %11, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 11
  %125 = call i32 @__get_user(i32 %122, i32* %124)
  %126 = load i32, i32* %13, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %13, align 4
  %128 = load %struct.switch_stack*, %struct.switch_stack** %7, align 8
  %129 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %11, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 12
  %133 = call i32 @__get_user(i32 %130, i32* %132)
  %134 = load i32, i32* %13, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %13, align 4
  %136 = load %struct.switch_stack*, %struct.switch_stack** %7, align 8
  %137 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %11, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 13
  %141 = call i32 @__get_user(i32 %138, i32* %140)
  %142 = load i32, i32* %13, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %13, align 4
  %144 = load %struct.switch_stack*, %struct.switch_stack** %7, align 8
  %145 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %11, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 14
  %149 = call i32 @__get_user(i32 %146, i32* %148)
  %150 = load i32, i32* %13, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %13, align 4
  %152 = load i64, i64* %12, align 8
  %153 = trunc i64 %152 to i32
  %154 = load i32*, i32** %11, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 15
  %156 = call i32 @__get_user(i32 %153, i32* %155)
  %157 = load i32, i32* %13, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %13, align 4
  %159 = load i64, i64* %12, align 8
  %160 = call i32 @wrusp(i64 %159)
  %161 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %162 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %161, i32 0, i32 9
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %11, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 16
  %166 = call i32 @__get_user(i32 %163, i32* %165)
  %167 = load i32, i32* %13, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %13, align 4
  %169 = load i32, i32* %10, align 4
  %170 = load i32*, i32** %11, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 17
  %172 = call i32 @__get_user(i32 %169, i32* %171)
  %173 = load i32, i32* %13, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %13, align 4
  %175 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %176 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %175, i32 0, i32 10
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, 65280
  %179 = load i32, i32* %10, align 4
  %180 = and i32 %179, 255
  %181 = or i32 %178, %180
  %182 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %183 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %182, i32 0, i32 10
  store i32 %181, i32* %183, align 4
  %184 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %185 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %184, i32 0, i32 11
  store i32 -1, i32* %185, align 4
  %186 = load i32, i32* %10, align 4
  %187 = ashr i32 %186, 12
  %188 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %189 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %188, i32 0, i32 12
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* %10, align 4
  %191 = and i32 %190, 4095
  %192 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %193 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %192, i32 0, i32 13
  store i32 %191, i32* %193, align 4
  %194 = load %struct.ucontext*, %struct.ucontext** %8, align 8
  %195 = getelementptr inbounds %struct.ucontext, %struct.ucontext* %194, i32 0, i32 0
  %196 = load i64, i64* %12, align 8
  %197 = call i32 @do_sigaltstack(i32* %195, i32* null, i64 %196)
  %198 = load i32, i32* @EFAULT, align 4
  %199 = sub nsw i32 0, %198
  %200 = icmp eq i32 %197, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %31
  br label %208

202:                                              ; preds = %31
  %203 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %204 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32*, i32** %9, align 8
  store i32 %205, i32* %206, align 4
  %207 = load i32, i32* %13, align 4
  store i32 %207, i32* %5, align 4
  br label %209

208:                                              ; preds = %201, %30
  store i32 1, i32* %5, align 4
  br label %209

209:                                              ; preds = %208, %202
  %210 = load i32, i32* %5, align 4
  ret i32 %210
}

declare dso_local %struct.TYPE_6__* @current_thread_info(...) #1

declare dso_local i32 @__get_user(i32, i32*) #1

declare dso_local i32 @wrusp(i64) #1

declare dso_local i32 @do_sigaltstack(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
