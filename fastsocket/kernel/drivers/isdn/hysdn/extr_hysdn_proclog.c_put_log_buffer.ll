; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hysdn/extr_hysdn_proclog.c_put_log_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hysdn/extr_hysdn_proclog.c_put_log_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.procdata* }
%struct.procdata = type { i64, i32, i32, %struct.log_data*, %struct.log_data* }
%struct.log_data = type { i64, %struct.log_data*, %struct.procdata*, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*)* @put_log_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_log_buffer(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.log_data*, align 8
  %6 = alloca %struct.procdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load %struct.procdata*, %struct.procdata** %10, align 8
  store %struct.procdata* %11, %struct.procdata** %6, align 8
  %12 = load %struct.procdata*, %struct.procdata** %6, align 8
  %13 = icmp ne %struct.procdata* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %134

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  br label %134

19:                                               ; preds = %15
  %20 = load i8*, i8** %4, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  br label %134

24:                                               ; preds = %19
  %25 = load %struct.procdata*, %struct.procdata** %6, align 8
  %26 = getelementptr inbounds %struct.procdata, %struct.procdata* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sle i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %134

30:                                               ; preds = %24
  %31 = load i8*, i8** %4, align 8
  %32 = call i64 @strlen(i8* %31)
  %33 = add i64 32, %32
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call %struct.log_data* @kmalloc(i64 %33, i32 %34)
  store %struct.log_data* %35, %struct.log_data** %5, align 8
  %36 = icmp ne %struct.log_data* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %134

38:                                               ; preds = %30
  %39 = load %struct.log_data*, %struct.log_data** %5, align 8
  %40 = getelementptr inbounds %struct.log_data, %struct.log_data* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @strcpy(i32 %41, i8* %42)
  %44 = load %struct.log_data*, %struct.log_data** %5, align 8
  %45 = getelementptr inbounds %struct.log_data, %struct.log_data* %44, i32 0, i32 1
  store %struct.log_data* null, %struct.log_data** %45, align 8
  %46 = load %struct.procdata*, %struct.procdata** %6, align 8
  %47 = load %struct.log_data*, %struct.log_data** %5, align 8
  %48 = getelementptr inbounds %struct.log_data, %struct.log_data* %47, i32 0, i32 2
  store %struct.procdata* %46, %struct.procdata** %48, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @spin_lock_irqsave(i32* %50, i64 %51)
  %53 = load %struct.procdata*, %struct.procdata** %6, align 8
  %54 = getelementptr inbounds %struct.procdata, %struct.procdata* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.log_data*, %struct.log_data** %5, align 8
  %57 = getelementptr inbounds %struct.log_data, %struct.log_data* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.procdata*, %struct.procdata** %6, align 8
  %59 = getelementptr inbounds %struct.procdata, %struct.procdata* %58, i32 0, i32 3
  %60 = load %struct.log_data*, %struct.log_data** %59, align 8
  %61 = icmp ne %struct.log_data* %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %38
  %63 = load %struct.log_data*, %struct.log_data** %5, align 8
  %64 = load %struct.procdata*, %struct.procdata** %6, align 8
  %65 = getelementptr inbounds %struct.procdata, %struct.procdata* %64, i32 0, i32 3
  store %struct.log_data* %63, %struct.log_data** %65, align 8
  br label %72

66:                                               ; preds = %38
  %67 = load %struct.log_data*, %struct.log_data** %5, align 8
  %68 = load %struct.procdata*, %struct.procdata** %6, align 8
  %69 = getelementptr inbounds %struct.procdata, %struct.procdata* %68, i32 0, i32 4
  %70 = load %struct.log_data*, %struct.log_data** %69, align 8
  %71 = getelementptr inbounds %struct.log_data, %struct.log_data* %70, i32 0, i32 1
  store %struct.log_data* %67, %struct.log_data** %71, align 8
  br label %72

72:                                               ; preds = %66, %62
  %73 = load %struct.log_data*, %struct.log_data** %5, align 8
  %74 = load %struct.procdata*, %struct.procdata** %6, align 8
  %75 = getelementptr inbounds %struct.procdata, %struct.procdata* %74, i32 0, i32 4
  store %struct.log_data* %73, %struct.log_data** %75, align 8
  %76 = load %struct.procdata*, %struct.procdata** %6, align 8
  %77 = getelementptr inbounds %struct.procdata, %struct.procdata* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  store i32 %78, i32* %7, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i64, i64* %8, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %126, label %86

86:                                               ; preds = %72
  br label %87

87:                                               ; preds = %124, %86
  %88 = load %struct.procdata*, %struct.procdata** %6, align 8
  %89 = getelementptr inbounds %struct.procdata, %struct.procdata* %88, i32 0, i32 3
  %90 = load %struct.log_data*, %struct.log_data** %89, align 8
  %91 = getelementptr inbounds %struct.log_data, %struct.log_data* %90, i32 0, i32 1
  %92 = load %struct.log_data*, %struct.log_data** %91, align 8
  %93 = icmp ne %struct.log_data* %92, null
  br i1 %93, label %94, label %125

94:                                               ; preds = %87
  %95 = load %struct.procdata*, %struct.procdata** %6, align 8
  %96 = getelementptr inbounds %struct.procdata, %struct.procdata* %95, i32 0, i32 3
  %97 = load %struct.log_data*, %struct.log_data** %96, align 8
  %98 = getelementptr inbounds %struct.log_data, %struct.log_data* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp sle i64 %99, 0
  br i1 %100, label %101, label %123

101:                                              ; preds = %94
  %102 = load %struct.procdata*, %struct.procdata** %6, align 8
  %103 = getelementptr inbounds %struct.procdata, %struct.procdata* %102, i32 0, i32 3
  %104 = load %struct.log_data*, %struct.log_data** %103, align 8
  %105 = getelementptr inbounds %struct.log_data, %struct.log_data* %104, i32 0, i32 1
  %106 = load %struct.log_data*, %struct.log_data** %105, align 8
  %107 = getelementptr inbounds %struct.log_data, %struct.log_data* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp sle i64 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %101
  %111 = load %struct.procdata*, %struct.procdata** %6, align 8
  %112 = getelementptr inbounds %struct.procdata, %struct.procdata* %111, i32 0, i32 3
  %113 = load %struct.log_data*, %struct.log_data** %112, align 8
  store %struct.log_data* %113, %struct.log_data** %5, align 8
  %114 = load %struct.procdata*, %struct.procdata** %6, align 8
  %115 = getelementptr inbounds %struct.procdata, %struct.procdata* %114, i32 0, i32 3
  %116 = load %struct.log_data*, %struct.log_data** %115, align 8
  %117 = getelementptr inbounds %struct.log_data, %struct.log_data* %116, i32 0, i32 1
  %118 = load %struct.log_data*, %struct.log_data** %117, align 8
  %119 = load %struct.procdata*, %struct.procdata** %6, align 8
  %120 = getelementptr inbounds %struct.procdata, %struct.procdata* %119, i32 0, i32 3
  store %struct.log_data* %118, %struct.log_data** %120, align 8
  %121 = load %struct.log_data*, %struct.log_data** %5, align 8
  %122 = call i32 @kfree(%struct.log_data* %121)
  br label %124

123:                                              ; preds = %101, %94
  br label %125

124:                                              ; preds = %110
  br label %87

125:                                              ; preds = %123, %87
  br label %126

126:                                              ; preds = %125, %72
  %127 = load %struct.procdata*, %struct.procdata** %6, align 8
  %128 = getelementptr inbounds %struct.procdata, %struct.procdata* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %128, align 4
  %131 = load %struct.procdata*, %struct.procdata** %6, align 8
  %132 = getelementptr inbounds %struct.procdata, %struct.procdata* %131, i32 0, i32 1
  %133 = call i32 @wake_up_interruptible(i32* %132)
  br label %134

134:                                              ; preds = %126, %37, %29, %23, %18, %14
  ret void
}

declare dso_local %struct.log_data* @kmalloc(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.log_data*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
