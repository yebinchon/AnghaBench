; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_io.c_DIDpcRoutine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_io.c_DIDpcRoutine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._diva_os_soft_isr = type { i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_14__*, i64, i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)*, i32, i64 (%struct.TYPE_13__*)*, i32, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, %struct.pc_maint*, i32)*, i64 (%struct.TYPE_13__*, i32*)*, i32 (%struct.TYPE_13__*, i32*, i32)* }
%struct.pc_maint = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"data_dpc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DIDpcRoutine(%struct._diva_os_soft_isr* %0, i8* %1) #0 {
  %3 = alloca %struct._diva_os_soft_isr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pc_maint*, align 8
  %9 = alloca i32, align 4
  store %struct._diva_os_soft_isr* %0, %struct._diva_os_soft_isr** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %5, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 10
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %6, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 9
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @diva_os_atomic_increment(i32* %16)
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %125

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %50, %19
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 8
  %23 = load i64 (%struct.TYPE_13__*)*, i64 (%struct.TYPE_13__*)** %22, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %25 = call i64 %23(%struct.TYPE_13__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %20
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 6
  %35 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %34, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = call i32 %35(%struct.TYPE_13__* %36)
  br label %38

38:                                               ; preds = %32, %27
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 5
  %41 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %40, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = call i32 %41(%struct.TYPE_13__* %42)
  br label %44

44:                                               ; preds = %38, %20
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 4
  %47 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %46, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = call i32 %47(%struct.TYPE_13__* %48)
  br label %50

50:                                               ; preds = %44
  %51 = load i32*, i32** %7, align 8
  %52 = call i64 @diva_os_atomic_decrement(i32* %51)
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %20, label %54

54:                                               ; preds = %50
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %124

59:                                               ; preds = %54
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = call i32 @diva_os_enter_spin_lock(i32* %61, i32* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.pc_maint*
  store %struct.pc_maint* %66, %struct.pc_maint** %8, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %120 [
    i32 1, label %70
    i32 2, label %94
    i32 3, label %119
  ]

70:                                               ; preds = %59
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 2
  %73 = load i32 (%struct.TYPE_13__*, i32*, i32)*, i32 (%struct.TYPE_13__*, i32*, i32)** %72, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = call i32 %73(%struct.TYPE_13__* %74, i32* %78, i32 0)
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  %82 = load i32 (%struct.TYPE_13__*, i32*, i32)*, i32 (%struct.TYPE_13__*, i32*, i32)** %81, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = load %struct.pc_maint*, %struct.pc_maint** %8, align 8
  %89 = getelementptr inbounds %struct.pc_maint, %struct.pc_maint* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 %82(%struct.TYPE_13__* %83, i32* %87, i32 %90)
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  store i32 2, i32* %93, align 8
  br label %120

94:                                               ; preds = %59
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = load i64 (%struct.TYPE_13__*, i32*)*, i64 (%struct.TYPE_13__*, i32*)** %96, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = call i64 %97(%struct.TYPE_13__* %98, i32* %102)
  %104 = trunc i64 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %94
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, %struct.pc_maint*, i32)*, i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, %struct.pc_maint*, i32)** %108, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %112, align 8
  %114 = load %struct.pc_maint*, %struct.pc_maint** %8, align 8
  %115 = call i32 %109(%struct.TYPE_13__* %110, %struct.TYPE_14__* %113, %struct.pc_maint* %114, i32 4)
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  store i32 3, i32* %117, align 8
  br label %118

118:                                              ; preds = %106, %94
  br label %120

119:                                              ; preds = %59
  br label %120

120:                                              ; preds = %59, %119, %118, %70
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = call i32 @diva_os_leave_spin_lock(i32* %122, i32* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %124

124:                                              ; preds = %120, %54
  br label %125

125:                                              ; preds = %124, %2
  ret void
}

declare dso_local i32 @diva_os_atomic_increment(i32*) #1

declare dso_local i64 @diva_os_atomic_decrement(i32*) #1

declare dso_local i32 @diva_os_enter_spin_lock(i32*, i32*, i8*) #1

declare dso_local i32 @diva_os_leave_spin_lock(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
