; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_action_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_action_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, i64, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mddev*)*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"frozen\00", align 1
@MD_RECOVERY_FROZEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@MD_RECOVERY_INTR = common dso_local global i32 0, align 4
@MD_RECOVERY_RUNNING = common dso_local global i32 0, align 4
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"resync\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"recover\00", align 1
@MD_RECOVERY_RECOVER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"reshape\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"degraded\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@MD_RECOVERY_CHECK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"repair\00", align 1
@MD_RECOVERY_REQUESTED = common dso_local global i32 0, align 4
@MD_RECOVERY_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i8*, i64)* @action_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_store(%struct.mddev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.mddev*, %struct.mddev** %5, align 8
  %10 = getelementptr inbounds %struct.mddev, %struct.mddev* %9, i32 0, i32 6
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load %struct.mddev*, %struct.mddev** %5, align 8
  %15 = getelementptr inbounds %struct.mddev, %struct.mddev* %14, i32 0, i32 6
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %13, %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %182

23:                                               ; preds = %13
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @cmd_match(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* @MD_RECOVERY_FROZEN, align 4
  %29 = load %struct.mddev*, %struct.mddev** %5, align 8
  %30 = getelementptr inbounds %struct.mddev, %struct.mddev* %29, i32 0, i32 3
  %31 = call i32 @set_bit(i32 %28, i32* %30)
  br label %37

32:                                               ; preds = %23
  %33 = load i32, i32* @MD_RECOVERY_FROZEN, align 4
  %34 = load %struct.mddev*, %struct.mddev** %5, align 8
  %35 = getelementptr inbounds %struct.mddev, %struct.mddev* %34, i32 0, i32 3
  %36 = call i32 @clear_bit(i32 %33, i32* %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 @cmd_match(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8
  %43 = call i64 @cmd_match(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %41, %37
  %46 = load %struct.mddev*, %struct.mddev** %5, align 8
  %47 = getelementptr inbounds %struct.mddev, %struct.mddev* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i32, i32* @MD_RECOVERY_INTR, align 4
  %52 = load %struct.mddev*, %struct.mddev** %5, align 8
  %53 = getelementptr inbounds %struct.mddev, %struct.mddev* %52, i32 0, i32 3
  %54 = call i32 @set_bit(i32 %51, i32* %53)
  %55 = load %struct.mddev*, %struct.mddev** %5, align 8
  %56 = call i32 @md_reap_sync_thread(%struct.mddev* %55)
  br label %57

57:                                               ; preds = %50, %45
  br label %155

58:                                               ; preds = %41
  %59 = load i32, i32* @MD_RECOVERY_RUNNING, align 4
  %60 = load %struct.mddev*, %struct.mddev** %5, align 8
  %61 = getelementptr inbounds %struct.mddev, %struct.mddev* %60, i32 0, i32 3
  %62 = call i64 @test_bit(i32 %59, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %66 = load %struct.mddev*, %struct.mddev** %5, align 8
  %67 = getelementptr inbounds %struct.mddev, %struct.mddev* %66, i32 0, i32 3
  %68 = call i64 @test_bit(i32 %65, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64, %58
  %71 = load i32, i32* @EBUSY, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %182

73:                                               ; preds = %64
  %74 = load i8*, i8** %6, align 8
  %75 = call i64 @cmd_match(i8* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %79 = load %struct.mddev*, %struct.mddev** %5, align 8
  %80 = getelementptr inbounds %struct.mddev, %struct.mddev* %79, i32 0, i32 3
  %81 = call i32 @set_bit(i32 %78, i32* %80)
  br label %153

82:                                               ; preds = %73
  %83 = load i8*, i8** %6, align 8
  %84 = call i64 @cmd_match(i8* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %82
  %87 = load i32, i32* @MD_RECOVERY_RECOVER, align 4
  %88 = load %struct.mddev*, %struct.mddev** %5, align 8
  %89 = getelementptr inbounds %struct.mddev, %struct.mddev* %88, i32 0, i32 3
  %90 = call i32 @set_bit(i32 %87, i32* %89)
  %91 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %92 = load %struct.mddev*, %struct.mddev** %5, align 8
  %93 = getelementptr inbounds %struct.mddev, %struct.mddev* %92, i32 0, i32 3
  %94 = call i32 @set_bit(i32 %91, i32* %93)
  br label %152

95:                                               ; preds = %82
  %96 = load i8*, i8** %6, align 8
  %97 = call i64 @cmd_match(i8* %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %125

99:                                               ; preds = %95
  %100 = load %struct.mddev*, %struct.mddev** %5, align 8
  %101 = getelementptr inbounds %struct.mddev, %struct.mddev* %100, i32 0, i32 6
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32 (%struct.mddev*)*, i32 (%struct.mddev*)** %103, align 8
  %105 = icmp eq i32 (%struct.mddev*)* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %182

109:                                              ; preds = %99
  %110 = load %struct.mddev*, %struct.mddev** %5, align 8
  %111 = getelementptr inbounds %struct.mddev, %struct.mddev* %110, i32 0, i32 6
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32 (%struct.mddev*)*, i32 (%struct.mddev*)** %113, align 8
  %115 = load %struct.mddev*, %struct.mddev** %5, align 8
  %116 = call i32 %114(%struct.mddev* %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %109
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %4, align 4
  br label %182

121:                                              ; preds = %109
  %122 = load %struct.mddev*, %struct.mddev** %5, align 8
  %123 = getelementptr inbounds %struct.mddev, %struct.mddev* %122, i32 0, i32 5
  %124 = call i32 @sysfs_notify(i32* %123, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %151

125:                                              ; preds = %95
  %126 = load i8*, i8** %6, align 8
  %127 = call i64 @cmd_match(i8* %126, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load i32, i32* @MD_RECOVERY_CHECK, align 4
  %131 = load %struct.mddev*, %struct.mddev** %5, align 8
  %132 = getelementptr inbounds %struct.mddev, %struct.mddev* %131, i32 0, i32 3
  %133 = call i32 @set_bit(i32 %130, i32* %132)
  br label %142

134:                                              ; preds = %125
  %135 = load i8*, i8** %6, align 8
  %136 = call i64 @cmd_match(i8* %135, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %134
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %4, align 4
  br label %182

141:                                              ; preds = %134
  br label %142

142:                                              ; preds = %141, %129
  %143 = load i32, i32* @MD_RECOVERY_REQUESTED, align 4
  %144 = load %struct.mddev*, %struct.mddev** %5, align 8
  %145 = getelementptr inbounds %struct.mddev, %struct.mddev* %144, i32 0, i32 3
  %146 = call i32 @set_bit(i32 %143, i32* %145)
  %147 = load i32, i32* @MD_RECOVERY_SYNC, align 4
  %148 = load %struct.mddev*, %struct.mddev** %5, align 8
  %149 = getelementptr inbounds %struct.mddev, %struct.mddev* %148, i32 0, i32 3
  %150 = call i32 @set_bit(i32 %147, i32* %149)
  br label %151

151:                                              ; preds = %142, %121
  br label %152

152:                                              ; preds = %151, %86
  br label %153

153:                                              ; preds = %152, %77
  br label %154

154:                                              ; preds = %153
  br label %155

155:                                              ; preds = %154, %57
  %156 = load %struct.mddev*, %struct.mddev** %5, align 8
  %157 = getelementptr inbounds %struct.mddev, %struct.mddev* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp eq i32 %158, 2
  br i1 %159, label %160, label %167

160:                                              ; preds = %155
  %161 = load %struct.mddev*, %struct.mddev** %5, align 8
  %162 = getelementptr inbounds %struct.mddev, %struct.mddev* %161, i32 0, i32 0
  store i32 0, i32* %162, align 8
  %163 = load %struct.mddev*, %struct.mddev** %5, align 8
  %164 = getelementptr inbounds %struct.mddev, %struct.mddev* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @md_wakeup_thread(i64 %165)
  br label %167

167:                                              ; preds = %160, %155
  %168 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %169 = load %struct.mddev*, %struct.mddev** %5, align 8
  %170 = getelementptr inbounds %struct.mddev, %struct.mddev* %169, i32 0, i32 3
  %171 = call i32 @set_bit(i32 %168, i32* %170)
  %172 = load %struct.mddev*, %struct.mddev** %5, align 8
  %173 = getelementptr inbounds %struct.mddev, %struct.mddev* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @md_wakeup_thread(i64 %174)
  %176 = load %struct.mddev*, %struct.mddev** %5, align 8
  %177 = getelementptr inbounds %struct.mddev, %struct.mddev* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @sysfs_notify_dirent_safe(i32 %178)
  %180 = load i64, i64* %7, align 8
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %4, align 4
  br label %182

182:                                              ; preds = %167, %138, %119, %106, %70, %20
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i64 @cmd_match(i8*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @md_reap_sync_thread(%struct.mddev*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @sysfs_notify(i32*, i32*, i8*) #1

declare dso_local i32 @md_wakeup_thread(i64) #1

declare dso_local i32 @sysfs_notify_dirent_safe(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
