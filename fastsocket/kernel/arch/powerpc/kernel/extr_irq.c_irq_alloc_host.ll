; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_irq.c_irq_alloc_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_irq.c_irq_alloc_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.irq_host* }
%struct.irq_host = type { i32, %struct.TYPE_6__, i32, i32, %struct.irq_host_ops*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32* }
%struct.irq_host_ops = type { i32 (%struct.irq_host.0*, i32, i32)*, i32* }
%struct.irq_host.0 = type opaque
%struct.device_node = type { i32 }
%struct.TYPE_8__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@default_irq_host_match = common dso_local global i32* null, align 8
@irq_big_lock = common dso_local global i32 0, align 4
@irq_map = common dso_local global %struct.TYPE_7__* null, align 8
@mem_init_done = common dso_local global i64 0, align 8
@irq_hosts = common dso_local global i32 0, align 4
@NUM_ISA_INTERRUPTS = common dso_local global i32 0, align 4
@IRQ_NOREQUEST = common dso_local global i32 0, align 4
@NO_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"irq: Allocated host of type %d @0x%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.irq_host* @irq_alloc_host(%struct.device_node* %0, i32 %1, i32 %2, %struct.irq_host_ops* %3, i32 %4) #0 {
  %6 = alloca %struct.irq_host*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.irq_host_ops*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.irq_host*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store %struct.device_node* %0, %struct.device_node** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.irq_host_ops* %3, %struct.irq_host_ops** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 48, i32* %13, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 128
  br i1 %18, label %19, label %27

19:                                               ; preds = %5
  %20 = load i32, i32* %9, align 4
  %21 = zext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = load i32, i32* %13, align 4
  %24 = zext i32 %23 to i64
  %25 = add i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %13, align 4
  br label %27

27:                                               ; preds = %19, %5
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.irq_host* @zalloc_maybe_bootmem(i32 %28, i32 %29)
  store %struct.irq_host* %30, %struct.irq_host** %12, align 8
  %31 = load %struct.irq_host*, %struct.irq_host** %12, align 8
  %32 = icmp eq %struct.irq_host* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store %struct.irq_host* null, %struct.irq_host** %6, align 8
  br label %168

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.irq_host*, %struct.irq_host** %12, align 8
  %37 = getelementptr inbounds %struct.irq_host, %struct.irq_host* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.irq_host*, %struct.irq_host** %12, align 8
  %40 = getelementptr inbounds %struct.irq_host, %struct.irq_host* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.irq_host_ops*, %struct.irq_host_ops** %10, align 8
  %42 = load %struct.irq_host*, %struct.irq_host** %12, align 8
  %43 = getelementptr inbounds %struct.irq_host, %struct.irq_host* %42, i32 0, i32 4
  store %struct.irq_host_ops* %41, %struct.irq_host_ops** %43, align 8
  %44 = load %struct.device_node*, %struct.device_node** %7, align 8
  %45 = call i32 @of_node_get(%struct.device_node* %44)
  %46 = load %struct.irq_host*, %struct.irq_host** %12, align 8
  %47 = getelementptr inbounds %struct.irq_host, %struct.irq_host* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 8
  %48 = load %struct.irq_host*, %struct.irq_host** %12, align 8
  %49 = getelementptr inbounds %struct.irq_host, %struct.irq_host* %48, i32 0, i32 4
  %50 = load %struct.irq_host_ops*, %struct.irq_host_ops** %49, align 8
  %51 = getelementptr inbounds %struct.irq_host_ops, %struct.irq_host_ops* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %34
  %55 = load i32*, i32** @default_irq_host_match, align 8
  %56 = load %struct.irq_host*, %struct.irq_host** %12, align 8
  %57 = getelementptr inbounds %struct.irq_host, %struct.irq_host* %56, i32 0, i32 4
  %58 = load %struct.irq_host_ops*, %struct.irq_host_ops** %57, align 8
  %59 = getelementptr inbounds %struct.irq_host_ops, %struct.irq_host_ops* %58, i32 0, i32 1
  store i32* %55, i32** %59, align 8
  br label %60

60:                                               ; preds = %54, %34
  %61 = load i64, i64* %16, align 8
  %62 = call i32 @spin_lock_irqsave(i32* @irq_big_lock, i64 %61)
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, 129
  br i1 %64, label %65, label %85

65:                                               ; preds = %60
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** @irq_map, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load %struct.irq_host*, %struct.irq_host** %68, align 8
  %70 = icmp ne %struct.irq_host* %69, null
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load i64, i64* %16, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* @irq_big_lock, i64 %72)
  %74 = load i64, i64* @mem_init_done, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.irq_host*, %struct.irq_host** %12, align 8
  %78 = call i32 @kfree(%struct.irq_host* %77)
  br label %79

79:                                               ; preds = %76, %71
  store %struct.irq_host* null, %struct.irq_host** %6, align 8
  br label %168

80:                                               ; preds = %65
  %81 = load %struct.irq_host*, %struct.irq_host** %12, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** @irq_map, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  store %struct.irq_host* %81, %struct.irq_host** %84, align 8
  br label %85

85:                                               ; preds = %80, %60
  %86 = load %struct.irq_host*, %struct.irq_host** %12, align 8
  %87 = getelementptr inbounds %struct.irq_host, %struct.irq_host* %86, i32 0, i32 3
  %88 = call i32 @list_add(i32* %87, i32* @irq_hosts)
  %89 = load i64, i64* %16, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* @irq_big_lock, i64 %89)
  %91 = load i32, i32* %8, align 4
  switch i32 %91, label %162 [
    i32 129, label %92
    i32 128, label %133
  ]

92:                                               ; preds = %85
  %93 = load %struct.irq_host*, %struct.irq_host** %12, align 8
  %94 = getelementptr inbounds %struct.irq_host, %struct.irq_host* %93, i32 0, i32 2
  store i32 0, i32* %94, align 8
  store i32 1, i32* %14, align 4
  br label %95

95:                                               ; preds = %129, %92
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* @NUM_ISA_INTERRUPTS, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %99, label %132

99:                                               ; preds = %95
  %100 = load i32, i32* %14, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** @irq_map, align 8
  %102 = load i32, i32* %14, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  store i32 %100, i32* %105, align 8
  %106 = call i32 (...) @smp_wmb()
  %107 = load %struct.irq_host*, %struct.irq_host** %12, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** @irq_map, align 8
  %109 = load i32, i32* %14, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  store %struct.irq_host* %107, %struct.irq_host** %112, align 8
  %113 = call i32 (...) @smp_wmb()
  %114 = load i32, i32* @IRQ_NOREQUEST, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %14, align 4
  %117 = call %struct.TYPE_8__* @get_irq_desc(i32 %116)
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, %115
  store i32 %120, i32* %118, align 4
  %121 = load %struct.irq_host_ops*, %struct.irq_host_ops** %10, align 8
  %122 = getelementptr inbounds %struct.irq_host_ops, %struct.irq_host_ops* %121, i32 0, i32 0
  %123 = load i32 (%struct.irq_host.0*, i32, i32)*, i32 (%struct.irq_host.0*, i32, i32)** %122, align 8
  %124 = load %struct.irq_host*, %struct.irq_host** %12, align 8
  %125 = bitcast %struct.irq_host* %124 to %struct.irq_host.0*
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* %14, align 4
  %128 = call i32 %123(%struct.irq_host.0* %125, i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %99
  %130 = load i32, i32* %14, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %14, align 4
  br label %95

132:                                              ; preds = %95
  br label %163

133:                                              ; preds = %85
  %134 = load %struct.irq_host*, %struct.irq_host** %12, align 8
  %135 = getelementptr inbounds %struct.irq_host, %struct.irq_host* %134, i64 1
  %136 = bitcast %struct.irq_host* %135 to i32*
  store i32* %136, i32** %15, align 8
  store i32 0, i32* %14, align 4
  br label %137

137:                                              ; preds = %147, %133
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp ult i32 %138, %139
  br i1 %140, label %141, label %150

141:                                              ; preds = %137
  %142 = load i32, i32* @NO_IRQ, align 4
  %143 = load i32*, i32** %15, align 8
  %144 = load i32, i32* %14, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  store i32 %142, i32* %146, align 4
  br label %147

147:                                              ; preds = %141
  %148 = load i32, i32* %14, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %14, align 4
  br label %137

150:                                              ; preds = %137
  %151 = load i32, i32* %9, align 4
  %152 = load %struct.irq_host*, %struct.irq_host** %12, align 8
  %153 = getelementptr inbounds %struct.irq_host, %struct.irq_host* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  store i32 %151, i32* %155, align 8
  %156 = call i32 (...) @smp_wmb()
  %157 = load i32*, i32** %15, align 8
  %158 = load %struct.irq_host*, %struct.irq_host** %12, align 8
  %159 = getelementptr inbounds %struct.irq_host, %struct.irq_host* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  store i32* %157, i32** %161, align 8
  br label %163

162:                                              ; preds = %85
  br label %163

163:                                              ; preds = %162, %150, %132
  %164 = load i32, i32* %8, align 4
  %165 = load %struct.irq_host*, %struct.irq_host** %12, align 8
  %166 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %164, %struct.irq_host* %165)
  %167 = load %struct.irq_host*, %struct.irq_host** %12, align 8
  store %struct.irq_host* %167, %struct.irq_host** %6, align 8
  br label %168

168:                                              ; preds = %163, %79, %33
  %169 = load %struct.irq_host*, %struct.irq_host** %6, align 8
  ret %struct.irq_host* %169
}

declare dso_local %struct.irq_host* @zalloc_maybe_bootmem(i32, i32) #1

declare dso_local i32 @of_node_get(%struct.device_node*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.irq_host*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local %struct.TYPE_8__* @get_irq_desc(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, %struct.irq_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
