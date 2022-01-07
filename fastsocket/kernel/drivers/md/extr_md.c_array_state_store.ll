; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_array_state_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_array_state_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@array_states = common dso_local global i32 0, align 4
@MD_CHANGE_CLEAN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MD_CHANGE_PENDING = common dso_local global i32 0, align 4
@UNTIL_IOCTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i8*, i64)* @array_state_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @array_state_store(%struct.mddev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* @array_states, align 4
  %14 = call i32 @match_word(i8* %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  switch i32 %15, label %161 [
    i32 135, label %16
    i32 133, label %17
    i32 132, label %20
    i32 129, label %30
    i32 130, label %31
    i32 131, label %49
    i32 134, label %88
    i32 137, label %135
    i32 128, label %160
    i32 136, label %160
  ]

16:                                               ; preds = %3
  br label %161

17:                                               ; preds = %3
  %18 = load %struct.mddev*, %struct.mddev** %5, align 8
  %19 = call i32 @do_md_stop(%struct.mddev* %18, i32 0, i32* null)
  store i32 %19, i32* %8, align 4
  br label %161

20:                                               ; preds = %3
  %21 = load %struct.mddev*, %struct.mddev** %5, align 8
  %22 = getelementptr inbounds %struct.mddev, %struct.mddev* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.mddev*, %struct.mddev** %5, align 8
  %27 = call i32 @do_md_stop(%struct.mddev* %26, i32 2, i32* null)
  store i32 %27, i32* %8, align 4
  br label %29

28:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %28, %25
  br label %161

30:                                               ; preds = %3
  br label %161

31:                                               ; preds = %3
  %32 = load %struct.mddev*, %struct.mddev** %5, align 8
  %33 = getelementptr inbounds %struct.mddev, %struct.mddev* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.mddev*, %struct.mddev** %5, align 8
  %38 = call i32 @md_set_readonly(%struct.mddev* %37, i32* null)
  store i32 %38, i32* %8, align 4
  br label %48

39:                                               ; preds = %31
  %40 = load %struct.mddev*, %struct.mddev** %5, align 8
  %41 = getelementptr inbounds %struct.mddev, %struct.mddev* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.mddev*, %struct.mddev** %5, align 8
  %43 = getelementptr inbounds %struct.mddev, %struct.mddev* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @set_disk_ro(i32 %44, i32 1)
  %46 = load %struct.mddev*, %struct.mddev** %5, align 8
  %47 = call i32 @do_md_run(%struct.mddev* %46)
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %39, %36
  br label %161

49:                                               ; preds = %3
  %50 = load %struct.mddev*, %struct.mddev** %5, align 8
  %51 = getelementptr inbounds %struct.mddev, %struct.mddev* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %82

54:                                               ; preds = %49
  %55 = load %struct.mddev*, %struct.mddev** %5, align 8
  %56 = getelementptr inbounds %struct.mddev, %struct.mddev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.mddev*, %struct.mddev** %5, align 8
  %61 = call i32 @md_set_readonly(%struct.mddev* %60, i32* null)
  store i32 %61, i32* %8, align 4
  br label %71

62:                                               ; preds = %54
  %63 = load %struct.mddev*, %struct.mddev** %5, align 8
  %64 = getelementptr inbounds %struct.mddev, %struct.mddev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.mddev*, %struct.mddev** %5, align 8
  %69 = call i32 @restart_array(%struct.mddev* %68)
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %67, %62
  br label %71

71:                                               ; preds = %70, %59
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load %struct.mddev*, %struct.mddev** %5, align 8
  %76 = getelementptr inbounds %struct.mddev, %struct.mddev* %75, i32 0, i32 0
  store i32 2, i32* %76, align 8
  %77 = load %struct.mddev*, %struct.mddev** %5, align 8
  %78 = getelementptr inbounds %struct.mddev, %struct.mddev* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @set_disk_ro(i32 %79, i32 0)
  br label %81

81:                                               ; preds = %74, %71
  br label %87

82:                                               ; preds = %49
  %83 = load %struct.mddev*, %struct.mddev** %5, align 8
  %84 = getelementptr inbounds %struct.mddev, %struct.mddev* %83, i32 0, i32 0
  store i32 2, i32* %84, align 8
  %85 = load %struct.mddev*, %struct.mddev** %5, align 8
  %86 = call i32 @do_md_run(%struct.mddev* %85)
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %82, %81
  br label %161

88:                                               ; preds = %3
  %89 = load %struct.mddev*, %struct.mddev** %5, align 8
  %90 = getelementptr inbounds %struct.mddev, %struct.mddev* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %131

93:                                               ; preds = %88
  %94 = load %struct.mddev*, %struct.mddev** %5, align 8
  %95 = call i32 @restart_array(%struct.mddev* %94)
  %96 = load %struct.mddev*, %struct.mddev** %5, align 8
  %97 = getelementptr inbounds %struct.mddev, %struct.mddev* %96, i32 0, i32 9
  %98 = call i32 @spin_lock_irq(i32* %97)
  %99 = load %struct.mddev*, %struct.mddev** %5, align 8
  %100 = getelementptr inbounds %struct.mddev, %struct.mddev* %99, i32 0, i32 10
  %101 = call i32 @atomic_read(i32* %100)
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %124

103:                                              ; preds = %93
  %104 = load %struct.mddev*, %struct.mddev** %5, align 8
  %105 = getelementptr inbounds %struct.mddev, %struct.mddev* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %123

108:                                              ; preds = %103
  %109 = load %struct.mddev*, %struct.mddev** %5, align 8
  %110 = getelementptr inbounds %struct.mddev, %struct.mddev* %109, i32 0, i32 1
  store i32 1, i32* %110, align 4
  %111 = load %struct.mddev*, %struct.mddev** %5, align 8
  %112 = getelementptr inbounds %struct.mddev, %struct.mddev* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load %struct.mddev*, %struct.mddev** %5, align 8
  %117 = getelementptr inbounds %struct.mddev, %struct.mddev* %116, i32 0, i32 2
  store i32 0, i32* %117, align 8
  br label %118

118:                                              ; preds = %115, %108
  %119 = load i32, i32* @MD_CHANGE_CLEAN, align 4
  %120 = load %struct.mddev*, %struct.mddev** %5, align 8
  %121 = getelementptr inbounds %struct.mddev, %struct.mddev* %120, i32 0, i32 7
  %122 = call i32 @set_bit(i32 %119, i32* %121)
  br label %123

123:                                              ; preds = %118, %103
  store i32 0, i32* %8, align 4
  br label %127

124:                                              ; preds = %93
  %125 = load i32, i32* @EBUSY, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %124, %123
  %128 = load %struct.mddev*, %struct.mddev** %5, align 8
  %129 = getelementptr inbounds %struct.mddev, %struct.mddev* %128, i32 0, i32 9
  %130 = call i32 @spin_unlock_irq(i32* %129)
  br label %134

131:                                              ; preds = %88
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %8, align 4
  br label %134

134:                                              ; preds = %131, %127
  br label %161

135:                                              ; preds = %3
  %136 = load %struct.mddev*, %struct.mddev** %5, align 8
  %137 = getelementptr inbounds %struct.mddev, %struct.mddev* %136, i32 0, i32 8
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %135
  %141 = load %struct.mddev*, %struct.mddev** %5, align 8
  %142 = call i32 @restart_array(%struct.mddev* %141)
  %143 = load i32, i32* @MD_CHANGE_PENDING, align 4
  %144 = load %struct.mddev*, %struct.mddev** %5, align 8
  %145 = getelementptr inbounds %struct.mddev, %struct.mddev* %144, i32 0, i32 7
  %146 = call i32 @clear_bit(i32 %143, i32* %145)
  %147 = load %struct.mddev*, %struct.mddev** %5, align 8
  %148 = getelementptr inbounds %struct.mddev, %struct.mddev* %147, i32 0, i32 6
  %149 = call i32 @wake_up(i32* %148)
  store i32 0, i32* %8, align 4
  br label %159

150:                                              ; preds = %135
  %151 = load %struct.mddev*, %struct.mddev** %5, align 8
  %152 = getelementptr inbounds %struct.mddev, %struct.mddev* %151, i32 0, i32 0
  store i32 0, i32* %152, align 8
  %153 = load %struct.mddev*, %struct.mddev** %5, align 8
  %154 = getelementptr inbounds %struct.mddev, %struct.mddev* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @set_disk_ro(i32 %155, i32 0)
  %157 = load %struct.mddev*, %struct.mddev** %5, align 8
  %158 = call i32 @do_md_run(%struct.mddev* %157)
  store i32 %158, i32* %8, align 4
  br label %159

159:                                              ; preds = %150, %140
  br label %161

160:                                              ; preds = %3, %3
  br label %161

161:                                              ; preds = %3, %160, %159, %134, %87, %48, %30, %29, %17, %16
  %162 = load i32, i32* %8, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = load i32, i32* %8, align 4
  store i32 %165, i32* %4, align 4
  br label %182

166:                                              ; preds = %161
  %167 = load %struct.mddev*, %struct.mddev** %5, align 8
  %168 = getelementptr inbounds %struct.mddev, %struct.mddev* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @UNTIL_IOCTL, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %166
  %173 = load %struct.mddev*, %struct.mddev** %5, align 8
  %174 = getelementptr inbounds %struct.mddev, %struct.mddev* %173, i32 0, i32 3
  store i64 0, i64* %174, align 8
  br label %175

175:                                              ; preds = %172, %166
  %176 = load %struct.mddev*, %struct.mddev** %5, align 8
  %177 = getelementptr inbounds %struct.mddev, %struct.mddev* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @sysfs_notify_dirent_safe(i32 %178)
  %180 = load i64, i64* %7, align 8
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %4, align 4
  br label %182

182:                                              ; preds = %175, %164
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i32 @match_word(i8*, i32) #1

declare dso_local i32 @do_md_stop(%struct.mddev*, i32, i32*) #1

declare dso_local i32 @md_set_readonly(%struct.mddev*, i32*) #1

declare dso_local i32 @set_disk_ro(i32, i32) #1

declare dso_local i32 @do_md_run(%struct.mddev*) #1

declare dso_local i32 @restart_array(%struct.mddev*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @sysfs_notify_dirent_safe(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
