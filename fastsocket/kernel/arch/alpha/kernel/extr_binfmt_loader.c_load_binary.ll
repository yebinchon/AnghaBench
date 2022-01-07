; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_binfmt_loader.c_load_binary.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_binfmt_loader.c_load_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_binprm = type { i64, i32, %struct.file*, %struct.TYPE_5__*, i64 }
%struct.file = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.pt_regs = type { i32 }
%struct.exec = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@ENOEXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"/sbin/loader\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.linux_binprm*, %struct.pt_regs*)* @load_binary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_binary(%struct.linux_binprm* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.linux_binprm*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca %struct.exec*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32, align 4
  store %struct.linux_binprm* %0, %struct.linux_binprm** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  %10 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %11 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.exec*
  store %struct.exec* %13, %struct.exec** %6, align 8
  %14 = load %struct.exec*, %struct.exec** %6, align 8
  %15 = getelementptr inbounds %struct.exec, %struct.exec* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 387
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load %struct.exec*, %struct.exec** %6, align 8
  %21 = getelementptr inbounds %struct.exec, %struct.exec* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 12288
  %25 = icmp ne i32 %24, 12288
  br i1 %25, label %26, label %29

26:                                               ; preds = %19, %2
  %27 = load i32, i32* @ENOEXEC, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %89

29:                                               ; preds = %19
  %30 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %31 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOEXEC, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %89

37:                                               ; preds = %29
  %38 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %39 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %38, i32 0, i32 2
  %40 = load %struct.file*, %struct.file** %39, align 8
  %41 = call i32 @allow_write_access(%struct.file* %40)
  %42 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %43 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %42, i32 0, i32 2
  %44 = load %struct.file*, %struct.file** %43, align 8
  %45 = call i32 @fput(%struct.file* %44)
  %46 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %47 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %46, i32 0, i32 2
  store %struct.file* null, %struct.file** %47, align 8
  %48 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %49 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %48, i32 0, i32 3
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = sub i64 %53, 8
  store i64 %54, i64* %7, align 8
  %55 = call %struct.file* @open_exec(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store %struct.file* %55, %struct.file** %8, align 8
  %56 = load %struct.file*, %struct.file** %8, align 8
  %57 = call i32 @PTR_ERR(%struct.file* %56)
  store i32 %57, i32* %9, align 4
  %58 = load %struct.file*, %struct.file** %8, align 8
  %59 = call i64 @IS_ERR(%struct.file* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %37
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %3, align 4
  br label %89

63:                                               ; preds = %37
  %64 = load %struct.exec*, %struct.exec** %6, align 8
  %65 = getelementptr inbounds %struct.exec, %struct.exec* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp ult i64 %68, 4294967296
  %70 = zext i1 %69 to i32
  %71 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %72 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load %struct.file*, %struct.file** %8, align 8
  %74 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %75 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %74, i32 0, i32 2
  store %struct.file* %73, %struct.file** %75, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %78 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %80 = call i32 @prepare_binprm(%struct.linux_binprm* %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %63
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %3, align 4
  br label %89

85:                                               ; preds = %63
  %86 = load %struct.linux_binprm*, %struct.linux_binprm** %4, align 8
  %87 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %88 = call i32 @search_binary_handler(%struct.linux_binprm* %86, %struct.pt_regs* %87)
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %85, %83, %61, %34, %26
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @allow_write_access(%struct.file*) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local %struct.file* @open_exec(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @prepare_binprm(%struct.linux_binprm*) #1

declare dso_local i32 @search_binary_handler(%struct.linux_binprm*, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
