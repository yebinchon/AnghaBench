; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoedev.c_aoedev_by_aoeaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoedev.c_aoedev_by_aoeaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aoedev = type { i8*, i32, i32, i32, i32, %struct.aoedev*, i32, i32, i8*, i32, i32*, i8*, i8*, i32*, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i32, i8* }

@devlist_lock = common dso_local global i32 0, align 4
@devlist = common dso_local global %struct.aoedev* null, align 8
@DEVFL_TKILL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NTARGETS = common dso_local global i32 0, align 4
@aoecmd_sleepwork = common dso_local global i32 0, align 4
@dummy_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@NFACTIVE = common dso_local global i32 0, align 4
@RTTAVG_INIT = common dso_local global i32 0, align 4
@RTTDEV_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.aoedev* @aoedev_by_aoeaddr(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.aoedev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %10, align 8
  %11 = load i8*, i8** %9, align 8
  %12 = call i32 @spin_lock_irqsave(i32* @devlist_lock, i8* %11)
  %13 = load %struct.aoedev*, %struct.aoedev** @devlist, align 8
  store %struct.aoedev* %13, %struct.aoedev** %7, align 8
  br label %14

14:                                               ; preds = %52, %3
  %15 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %16 = icmp ne %struct.aoedev* %15, null
  br i1 %16, label %17, label %56

17:                                               ; preds = %14
  %18 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %19 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = icmp eq i8* %20, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %17
  %24 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %25 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %23
  %30 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %31 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %30, i32 0, i32 16
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %34 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DEVFL_TKILL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %41 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %40, i32 0, i32 16
  %42 = call i32 @spin_unlock(i32* %41)
  store %struct.aoedev* null, %struct.aoedev** %7, align 8
  br label %170

43:                                               ; preds = %29
  %44 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %45 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %49 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %48, i32 0, i32 16
  %50 = call i32 @spin_unlock(i32* %49)
  br label %56

51:                                               ; preds = %23, %17
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %54 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %53, i32 0, i32 5
  %55 = load %struct.aoedev*, %struct.aoedev** %54, align 8
  store %struct.aoedev* %55, %struct.aoedev** %7, align 8
  br label %14

56:                                               ; preds = %43, %14
  %57 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %58 = icmp ne %struct.aoedev* %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i8*, i8** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i64 @minor_get(i8** %10, i8* %63, i32 %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62, %59, %56
  br label %170

68:                                               ; preds = %62
  %69 = load i32, i32* @GFP_ATOMIC, align 4
  %70 = call i8* @kcalloc(i32 1, i32 128, i32 %69)
  %71 = bitcast i8* %70 to %struct.aoedev*
  store %struct.aoedev* %71, %struct.aoedev** %7, align 8
  %72 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %73 = icmp ne %struct.aoedev* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  br label %170

75:                                               ; preds = %68
  %76 = load i32, i32* @NTARGETS, align 4
  %77 = load i32, i32* @GFP_ATOMIC, align 4
  %78 = call i8* @kcalloc(i32 %76, i32 1, i32 %77)
  %79 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %80 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %79, i32 0, i32 11
  store i8* %78, i8** %80, align 8
  %81 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %82 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %81, i32 0, i32 11
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %75
  %86 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %87 = call i32 @kfree(%struct.aoedev* %86)
  store %struct.aoedev* null, %struct.aoedev** %7, align 8
  br label %170

88:                                               ; preds = %75
  %89 = load i32, i32* @NTARGETS, align 4
  %90 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %91 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 4
  %92 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %93 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %92, i32 0, i32 17
  %94 = load i32, i32* @aoecmd_sleepwork, align 4
  %95 = call i32 @INIT_WORK(i32* %93, i32 %94)
  %96 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %97 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %96, i32 0, i32 16
  %98 = call i32 @spin_lock_init(i32* %97)
  %99 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %100 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %99, i32 0, i32 15
  %101 = call i32 @skb_queue_head_init(i32* %100)
  %102 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %103 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %102, i32 0, i32 14
  %104 = call i32 @init_timer(%struct.TYPE_3__* %103)
  %105 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %106 = bitcast %struct.aoedev* %105 to i8*
  %107 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %108 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %107, i32 0, i32 14
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  store i8* %106, i8** %109, align 8
  %110 = load i32, i32* @dummy_timer, align 4
  %111 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %112 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %111, i32 0, i32 14
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 8
  %114 = load i64, i64* @jiffies, align 8
  %115 = load i64, i64* @HZ, align 8
  %116 = add nsw i64 %114, %115
  %117 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %118 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %117, i32 0, i32 14
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  store i64 %116, i64* %119, align 8
  %120 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %121 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %120, i32 0, i32 14
  %122 = call i32 @add_timer(%struct.TYPE_3__* %121)
  %123 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %124 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %123, i32 0, i32 13
  store i32* null, i32** %124, align 8
  %125 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %126 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %125, i32 0, i32 11
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %129 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %128, i32 0, i32 12
  store i8* %127, i8** %129, align 8
  %130 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %131 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %130, i32 0, i32 3
  store i32 1, i32* %131, align 8
  store i32 0, i32* %8, align 4
  br label %132

132:                                              ; preds = %144, %88
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @NFACTIVE, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %147

136:                                              ; preds = %132
  %137 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %138 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %137, i32 0, i32 10
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = call i32 @INIT_LIST_HEAD(i32* %142)
  br label %144

144:                                              ; preds = %136
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %132

147:                                              ; preds = %132
  %148 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %149 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %148, i32 0, i32 9
  %150 = call i32 @INIT_LIST_HEAD(i32* %149)
  %151 = load i8*, i8** %10, align 8
  %152 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %153 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %152, i32 0, i32 8
  store i8* %151, i8** %153, align 8
  %154 = load i8*, i8** %4, align 8
  %155 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %156 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %155, i32 0, i32 0
  store i8* %154, i8** %156, align 8
  %157 = load i32, i32* %5, align 4
  %158 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %159 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 8
  %160 = load i32, i32* @RTTAVG_INIT, align 4
  %161 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %162 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %161, i32 0, i32 7
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* @RTTDEV_INIT, align 4
  %164 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %165 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %164, i32 0, i32 6
  store i32 %163, i32* %165, align 8
  %166 = load %struct.aoedev*, %struct.aoedev** @devlist, align 8
  %167 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  %168 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %167, i32 0, i32 5
  store %struct.aoedev* %166, %struct.aoedev** %168, align 8
  %169 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  store %struct.aoedev* %169, %struct.aoedev** @devlist, align 8
  br label %170

170:                                              ; preds = %147, %85, %74, %67, %39
  %171 = load i8*, i8** %9, align 8
  %172 = call i32 @spin_unlock_irqrestore(i32* @devlist_lock, i8* %171)
  %173 = load %struct.aoedev*, %struct.aoedev** %7, align 8
  ret %struct.aoedev* %173
}

declare dso_local i32 @spin_lock_irqsave(i32*, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @minor_get(i8**, i8*, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.aoedev*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @init_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
