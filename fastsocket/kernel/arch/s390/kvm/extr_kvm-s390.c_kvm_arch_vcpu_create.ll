; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_vcpu_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_vcpu_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.kvm_s390_sie_block*, %struct.TYPE_9__ }
%struct.kvm_s390_sie_block = type { i32, i32, i8*, i8* }
%struct.TYPE_9__ = type { i32*, i32, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__** }
%struct.kvm = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"create cpu %d at %p, sie block at %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kvm_vcpu* @kvm_arch_vcpu_create(%struct.kvm* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.kvm_vcpu* @kzalloc(i32 40, i32 %8)
  store %struct.kvm_vcpu* %9, %struct.kvm_vcpu** %6, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %13 = icmp ne %struct.kvm_vcpu* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %169

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i64 @get_zeroed_page(i32 %16)
  %18 = inttoptr i64 %17 to %struct.kvm_s390_sie_block*
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %20 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  store %struct.kvm_s390_sie_block* %18, %struct.kvm_s390_sie_block** %21, align 8
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %24, align 8
  %26 = icmp ne %struct.kvm_s390_sie_block* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %15
  br label %166

28:                                               ; preds = %15
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %31 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %32, align 8
  %34 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %33, i32 0, i32 0
  store i32 %29, i32* %34, align 8
  %35 = load %struct.kvm*, %struct.kvm** %4, align 8
  %36 = getelementptr inbounds %struct.kvm, %struct.kvm* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = icmp ne %struct.TYPE_8__* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load %struct.kvm*, %struct.kvm** %4, align 8
  %44 = getelementptr inbounds %struct.kvm, %struct.kvm* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %71, label %55

55:                                               ; preds = %28
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %57 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %58, align 8
  %60 = ptrtoint %struct.kvm_s390_sie_block* %59 to i32
  %61 = load %struct.kvm*, %struct.kvm** %4, align 8
  %62 = getelementptr inbounds %struct.kvm, %struct.kvm* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i32 %60, i32* %70, align 4
  br label %71

71:                                               ; preds = %55, %28
  %72 = load %struct.kvm*, %struct.kvm** %4, align 8
  %73 = getelementptr inbounds %struct.kvm, %struct.kvm* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = ptrtoint %struct.TYPE_8__* %75 to i32
  %77 = ashr i32 %76, 32
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i8*
  %80 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %81 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %82, align 8
  %84 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %83, i32 0, i32 3
  store i8* %79, i8** %84, align 8
  %85 = load %struct.kvm*, %struct.kvm** %4, align 8
  %86 = getelementptr inbounds %struct.kvm, %struct.kvm* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = ptrtoint %struct.TYPE_8__* %88 to i32
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to i8*
  %92 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %93 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %94, align 8
  %96 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %95, i32 0, i32 2
  store i8* %91, i8** %96, align 8
  %97 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %98 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 4
  %101 = call i32 @spin_lock_init(i32* %100)
  %102 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %103 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 3
  %106 = call i32 @INIT_LIST_HEAD(i32* %105)
  %107 = load %struct.kvm*, %struct.kvm** %4, align 8
  %108 = getelementptr inbounds %struct.kvm, %struct.kvm* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %111 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 2
  store %struct.TYPE_10__* %109, %struct.TYPE_10__** %113, align 8
  %114 = load %struct.kvm*, %struct.kvm** %4, align 8
  %115 = getelementptr inbounds %struct.kvm, %struct.kvm* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = call i32 @spin_lock(i32* %117)
  %119 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %120 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = load %struct.kvm*, %struct.kvm** %4, align 8
  %123 = getelementptr inbounds %struct.kvm, %struct.kvm* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %126, i64 %128
  store %struct.TYPE_9__* %121, %struct.TYPE_9__** %129, align 8
  %130 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %131 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = call i32 @init_waitqueue_head(i32* %133)
  %135 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %136 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %137, align 8
  %139 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %138, i32 0, i32 1
  %140 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %141 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  store i32* %139, i32** %143, align 8
  %144 = load %struct.kvm*, %struct.kvm** %4, align 8
  %145 = getelementptr inbounds %struct.kvm, %struct.kvm* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = call i32 @spin_unlock(i32* %147)
  %149 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %150 = load %struct.kvm*, %struct.kvm** %4, align 8
  %151 = load i32, i32* %5, align 4
  %152 = call i32 @kvm_vcpu_init(%struct.kvm_vcpu* %149, %struct.kvm* %150, i32 %151)
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %71
  br label %166

156:                                              ; preds = %71
  %157 = load %struct.kvm*, %struct.kvm** %4, align 8
  %158 = load i32, i32* %5, align 4
  %159 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %160 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %161 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %162, align 8
  %164 = call i32 @VM_EVENT(%struct.kvm* %157, i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %158, %struct.kvm_vcpu* %159, %struct.kvm_s390_sie_block* %163)
  %165 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  store %struct.kvm_vcpu* %165, %struct.kvm_vcpu** %3, align 8
  br label %172

166:                                              ; preds = %155, %27
  %167 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %168 = call i32 @kfree(%struct.kvm_vcpu* %167)
  br label %169

169:                                              ; preds = %166, %14
  %170 = load i32, i32* %7, align 4
  %171 = call %struct.kvm_vcpu* @ERR_PTR(i32 %170)
  store %struct.kvm_vcpu* %171, %struct.kvm_vcpu** %3, align 8
  br label %172

172:                                              ; preds = %169, %156
  %173 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  ret %struct.kvm_vcpu* %173
}

declare dso_local %struct.kvm_vcpu* @kzalloc(i32, i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kvm_vcpu_init(%struct.kvm_vcpu*, %struct.kvm*, i32) #1

declare dso_local i32 @VM_EVENT(%struct.kvm*, i32, i8*, i32, %struct.kvm_vcpu*, %struct.kvm_s390_sie_block*) #1

declare dso_local i32 @kfree(%struct.kvm_vcpu*) #1

declare dso_local %struct.kvm_vcpu* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
