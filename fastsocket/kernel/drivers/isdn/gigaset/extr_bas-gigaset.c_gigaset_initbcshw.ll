; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_bas-gigaset.c_gigaset_initbcshw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_bas-gigaset.c_gigaset_initbcshw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.bas_bc_state* }
%struct.bas_bc_state = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32*, i32**, i32, i32, i8*, i64, i32*, i32, i32, %struct.TYPE_3__*, i32, i32, i64 }
%struct.TYPE_3__ = type { %struct.bc_state*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@BAS_OUTURBS = common dso_local global i32 0, align 4
@write_iso_tasklet = common dso_local global i32 0, align 4
@BAS_INURBS = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@read_iso_tasklet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bc_state*)* @gigaset_initbcshw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gigaset_initbcshw(%struct.bc_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bc_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bas_bc_state*, align 8
  store %struct.bc_state* %0, %struct.bc_state** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i8* @kmalloc(i32 200, i32 %6)
  %8 = bitcast i8* %7 to %struct.bas_bc_state*
  store %struct.bas_bc_state* %8, %struct.bas_bc_state** %5, align 8
  %9 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %10 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.bas_bc_state* %8, %struct.bas_bc_state** %11, align 8
  %12 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %13 = icmp ne %struct.bas_bc_state* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %130

16:                                               ; preds = %1
  %17 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %18 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %17, i32 0, i32 27
  store i64 0, i64* %18, align 8
  %19 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %20 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %19, i32 0, i32 26
  %21 = call i32 @atomic_set(i32* %20, i32 0)
  %22 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %23 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %22, i32 0, i32 25
  %24 = call i32 @spin_lock_init(i32* %23)
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %45, %16
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @BAS_OUTURBS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %25
  %30 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %31 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %30, i32 0, i32 24
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %38 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %39 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %38, i32 0, i32 24
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store %struct.bc_state* %37, %struct.bc_state** %44, align 8
  br label %45

45:                                               ; preds = %29
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %25

48:                                               ; preds = %25
  %49 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %50 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %49, i32 0, i32 21
  store i32* null, i32** %50, align 8
  %51 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %52 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %51, i32 0, i32 22
  store i32 0, i32* %52, align 8
  %53 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %54 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %53, i32 0, i32 23
  store i32 0, i32* %54, align 4
  %55 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %56 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %55, i32 0, i32 20
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i8* @kmalloc(i32 4, i32 %57)
  %59 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %60 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %59, i32 0, i32 19
  store i8* %58, i8** %60, align 8
  %61 = icmp ne i8* %58, null
  br i1 %61, label %69, label %62

62:                                               ; preds = %48
  %63 = call i32 @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %65 = call i32 @kfree(%struct.bas_bc_state* %64)
  %66 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %67 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store %struct.bas_bc_state* null, %struct.bas_bc_state** %68, align 8
  store i32 0, i32* %2, align 4
  br label %130

69:                                               ; preds = %48
  %70 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %71 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %70, i32 0, i32 18
  %72 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %73 = ptrtoint %struct.bc_state* %72 to i64
  %74 = call i32 @tasklet_init(i32* %71, i32* @write_iso_tasklet, i64 %73)
  %75 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %76 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %75, i32 0, i32 17
  %77 = call i32 @spin_lock_init(i32* %76)
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %89, %69
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @BAS_INURBS, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %84 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %83, i32 0, i32 16
  %85 = load i32**, i32*** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %85, i64 %87
  store i32* null, i32** %88, align 8
  br label %89

89:                                               ; preds = %82
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %78

92:                                               ; preds = %78
  %93 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %94 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %93, i32 0, i32 15
  store i32* null, i32** %94, align 8
  %95 = load i32, i32* @EINPROGRESS, align 4
  %96 = sub nsw i32 0, %95
  %97 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %98 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %97, i32 0, i32 14
  store i32 %96, i32* %98, align 8
  %99 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %100 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %99, i32 0, i32 13
  store i64 0, i64* %100, align 8
  %101 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %102 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %101, i32 0, i32 12
  store i64 0, i64* %102, align 8
  %103 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %104 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %103, i32 0, i32 11
  store i64 0, i64* %104, align 8
  %105 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %106 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %105, i32 0, i32 10
  store i64 0, i64* %106, align 8
  %107 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %108 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %107, i32 0, i32 9
  store i64 0, i64* %108, align 8
  %109 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %110 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %109, i32 0, i32 8
  store i64 0, i64* %110, align 8
  %111 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %112 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %111, i32 0, i32 7
  store i64 0, i64* %112, align 8
  %113 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %114 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %113, i32 0, i32 6
  store i64 0, i64* %114, align 8
  %115 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %116 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %115, i32 0, i32 5
  store i64 0, i64* %116, align 8
  %117 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %118 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %117, i32 0, i32 4
  store i64 0, i64* %118, align 8
  %119 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %120 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %119, i32 0, i32 3
  store i64 0, i64* %120, align 8
  %121 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %122 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %121, i32 0, i32 2
  store i64 0, i64* %122, align 8
  %123 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %124 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %123, i32 0, i32 1
  store i64 0, i64* %124, align 8
  %125 = load %struct.bas_bc_state*, %struct.bas_bc_state** %5, align 8
  %126 = getelementptr inbounds %struct.bas_bc_state, %struct.bas_bc_state* %125, i32 0, i32 0
  %127 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %128 = ptrtoint %struct.bc_state* %127 to i64
  %129 = call i32 @tasklet_init(i32* %126, i32* @read_iso_tasklet, i64 %128)
  store i32 1, i32* %2, align 4
  br label %130

130:                                              ; preds = %92, %62, %14
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kfree(%struct.bas_bc_state*) #1

declare dso_local i32 @tasklet_init(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
