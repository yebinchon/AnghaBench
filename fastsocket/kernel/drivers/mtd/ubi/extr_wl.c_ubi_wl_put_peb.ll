; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_wl.c_ubi_wl_put_peb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_wl.c_ubi_wl_put_peb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i64, i32, i32, i32, i32, %struct.ubi_wl_entry*, i32, %struct.ubi_wl_entry*, %struct.ubi_wl_entry** }
%struct.ubi_wl_entry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"PEB %d\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"PEB %d is being moved, wait\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"PEB %d is the target of data moving\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"PEB %d not found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_wl_put_peb(%struct.ubi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubi_wl_entry*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @dbg_wl(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @ubi_assert(i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %18 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @ubi_assert(i32 %21)
  br label %23

23:                                               ; preds = %39, %3
  %24 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %25 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %24, i32 0, i32 3
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %28 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %27, i32 0, i32 10
  %29 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %29, i64 %31
  %33 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %32, align 8
  store %struct.ubi_wl_entry* %33, %struct.ubi_wl_entry** %9, align 8
  %34 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %9, align 8
  %35 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %36 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %35, i32 0, i32 9
  %37 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %36, align 8
  %38 = icmp eq %struct.ubi_wl_entry* %34, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %23
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @dbg_wl(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %43 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %42, i32 0, i32 3
  %44 = call i32 @spin_unlock(i32* %43)
  %45 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %46 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %45, i32 0, i32 8
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %49 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %48, i32 0, i32 8
  %50 = call i32 @mutex_unlock(i32* %49)
  br label %23

51:                                               ; preds = %23
  %52 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %9, align 8
  %53 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %54 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %53, i32 0, i32 7
  %55 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %54, align 8
  %56 = icmp eq %struct.ubi_wl_entry* %52, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %51
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @dbg_wl(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %61 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @ubi_assert(i32 %65)
  %67 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %68 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  %69 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %70 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %69, i32 0, i32 3
  %71 = call i32 @spin_unlock(i32* %70)
  store i32 0, i32* %4, align 4
  br label %178

72:                                               ; preds = %51
  %73 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %9, align 8
  %74 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %75 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %74, i32 0, i32 4
  %76 = call i64 @in_wl_tree(%struct.ubi_wl_entry* %73, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %72
  %79 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %9, align 8
  %80 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %81 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %80, i32 0, i32 4
  %82 = call i32 @paranoid_check_in_wl_tree(%struct.ubi_wl_entry* %79, i32* %81)
  %83 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %9, align 8
  %84 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %87 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %86, i32 0, i32 4
  %88 = call i32 @rb_erase(i32* %85, i32* %87)
  br label %153

89:                                               ; preds = %72
  %90 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %9, align 8
  %91 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %92 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %91, i32 0, i32 6
  %93 = call i64 @in_wl_tree(%struct.ubi_wl_entry* %90, i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %89
  %96 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %9, align 8
  %97 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %98 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %97, i32 0, i32 6
  %99 = call i32 @paranoid_check_in_wl_tree(%struct.ubi_wl_entry* %96, i32* %98)
  %100 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %9, align 8
  %101 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %104 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %103, i32 0, i32 6
  %105 = call i32 @rb_erase(i32* %102, i32* %104)
  br label %152

106:                                              ; preds = %89
  %107 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %9, align 8
  %108 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %109 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %108, i32 0, i32 5
  %110 = call i64 @in_wl_tree(%struct.ubi_wl_entry* %107, i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %133

112:                                              ; preds = %106
  %113 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %9, align 8
  %114 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %115 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %114, i32 0, i32 5
  %116 = call i32 @paranoid_check_in_wl_tree(%struct.ubi_wl_entry* %113, i32* %115)
  %117 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %9, align 8
  %118 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %121 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %120, i32 0, i32 5
  %122 = call i32 @rb_erase(i32* %119, i32* %121)
  %123 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %124 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = sub nsw i64 %125, 1
  store i64 %126, i64* %124, align 8
  %127 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %128 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp sge i64 %129, 0
  %131 = zext i1 %130 to i32
  %132 = call i32 @ubi_assert(i32 %131)
  store i32 1, i32* %7, align 4
  br label %151

133:                                              ; preds = %106
  %134 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %135 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %9, align 8
  %136 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @prot_queue_del(%struct.ubi_device* %134, i32 %137)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %133
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @ubi_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %142)
  %144 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %145 = call i32 @ubi_ro_mode(%struct.ubi_device* %144)
  %146 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %147 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %146, i32 0, i32 3
  %148 = call i32 @spin_unlock(i32* %147)
  %149 = load i32, i32* %8, align 4
  store i32 %149, i32* %4, align 4
  br label %178

150:                                              ; preds = %133
  br label %151

151:                                              ; preds = %150, %112
  br label %152

152:                                              ; preds = %151, %95
  br label %153

153:                                              ; preds = %152, %78
  br label %154

154:                                              ; preds = %153
  br label %155

155:                                              ; preds = %154
  %156 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %157 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %156, i32 0, i32 3
  %158 = call i32 @spin_unlock(i32* %157)
  %159 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %160 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %9, align 8
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @schedule_erase(%struct.ubi_device* %159, %struct.ubi_wl_entry* %160, i32 %161)
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %176

165:                                              ; preds = %155
  %166 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %167 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %166, i32 0, i32 3
  %168 = call i32 @spin_lock(i32* %167)
  %169 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %9, align 8
  %170 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %171 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %170, i32 0, i32 4
  %172 = call i32 @wl_tree_add(%struct.ubi_wl_entry* %169, i32* %171)
  %173 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %174 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %173, i32 0, i32 3
  %175 = call i32 @spin_unlock(i32* %174)
  br label %176

176:                                              ; preds = %165, %155
  %177 = load i32, i32* %8, align 4
  store i32 %177, i32* %4, align 4
  br label %178

178:                                              ; preds = %176, %141, %57
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local i32 @dbg_wl(i8*, i32) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @in_wl_tree(%struct.ubi_wl_entry*, i32*) #1

declare dso_local i32 @paranoid_check_in_wl_tree(%struct.ubi_wl_entry*, i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @prot_queue_del(%struct.ubi_device*, i32) #1

declare dso_local i32 @ubi_err(i8*, i32) #1

declare dso_local i32 @ubi_ro_mode(%struct.ubi_device*) #1

declare dso_local i32 @schedule_erase(%struct.ubi_device*, %struct.ubi_wl_entry*, i32) #1

declare dso_local i32 @wl_tree_add(%struct.ubi_wl_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
