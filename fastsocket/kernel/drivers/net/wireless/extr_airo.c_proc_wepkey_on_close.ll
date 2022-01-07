; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_proc_wepkey_on_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_proc_wepkey_on_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i64 }
%struct.proc_data = type { i8*, i32 }
%struct.proc_dir_entry = type { %struct.net_device* }
%struct.net_device = type { %struct.airo_info* }
%struct.airo_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"failed to set WEP transmit index to %d: %d.\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"WepKey passed invalid key index\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to set WEP key at index %d: %d.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.file*)* @proc_wepkey_on_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_wepkey_on_close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.proc_data*, align 8
  %6 = alloca %struct.proc_dir_entry*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.airo_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [16 x i8], align 16
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = call %struct.proc_dir_entry* @PDE(%struct.inode* %14)
  store %struct.proc_dir_entry* %15, %struct.proc_dir_entry** %6, align 8
  %16 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %17 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %16, i32 0, i32 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %7, align 8
  %19 = load %struct.net_device*, %struct.net_device** %7, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load %struct.airo_info*, %struct.airo_info** %20, align 8
  store %struct.airo_info* %21, %struct.airo_info** %8, align 8
  store i8 0, i8* %12, align 1
  store i32 0, i32* %13, align 4
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %23 = call i32 @memset(i8* %22, i32 0, i32 16)
  %24 = load %struct.file*, %struct.file** %4, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.proc_data*
  store %struct.proc_data* %27, %struct.proc_data** %5, align 8
  %28 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %29 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %2
  br label %188

33:                                               ; preds = %2
  %34 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %35 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp sge i32 %39, 48
  br i1 %40, label %41, label %99

41:                                               ; preds = %33
  %42 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %43 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp sle i32 %47, 51
  br i1 %48, label %49, label %99

49:                                               ; preds = %41
  %50 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %51 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 32
  br i1 %56, label %65, label %57

57:                                               ; preds = %49
  %58 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %59 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 10
  br i1 %64, label %65, label %99

65:                                               ; preds = %57, %49
  %66 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %67 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = sub nsw i32 %71, 48
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %12, align 1
  %74 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %75 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 10
  br i1 %80, label %81, label %98

81:                                               ; preds = %65
  %82 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %83 = load i8, i8* %12, align 1
  %84 = call i32 @set_wep_tx_idx(%struct.airo_info* %82, i8 signext %83, i32 1, i32 1)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %81
  %88 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %89 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i8, i8* %12, align 1
  %94 = sext i8 %93 to i32
  %95 = load i32, i32* %10, align 4
  %96 = call i32 (i32, i8*, ...) @airo_print_err(i32 %92, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %87, %81
  br label %188

98:                                               ; preds = %65
  store i32 2, i32* %13, align 4
  br label %106

99:                                               ; preds = %57, %41, %33
  %100 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %101 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i32, i8*, ...) @airo_print_err(i32 %104, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %188

106:                                              ; preds = %98
  store i32 0, i32* %9, align 4
  br label %107

107:                                              ; preds = %166, %106
  %108 = load i32, i32* %9, align 4
  %109 = icmp slt i32 %108, 48
  br i1 %109, label %110, label %122

110:                                              ; preds = %107
  %111 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %112 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %113, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp ne i32 %120, 0
  br label %122

122:                                              ; preds = %110, %107
  %123 = phi i1 [ false, %107 ], [ %121, %110 ]
  br i1 %123, label %124, label %169

124:                                              ; preds = %122
  %125 = load i32, i32* %9, align 4
  %126 = srem i32 %125, 3
  switch i32 %126, label %165 [
    i32 0, label %127
    i32 1, label %145
  ]

127:                                              ; preds = %124
  %128 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %129 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %131, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %130, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = call signext i8 @hexVal(i8 signext %136)
  %138 = sext i8 %137 to i32
  %139 = shl i32 %138, 4
  %140 = trunc i32 %139 to i8
  %141 = load i32, i32* %9, align 4
  %142 = sdiv i32 %141, 3
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 %143
  store i8 %140, i8* %144, align 1
  br label %165

145:                                              ; preds = %124
  %146 = load %struct.proc_data*, %struct.proc_data** %5, align 8
  %147 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* %13, align 4
  %151 = add nsw i32 %149, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %148, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = call signext i8 @hexVal(i8 signext %154)
  %156 = sext i8 %155 to i32
  %157 = load i32, i32* %9, align 4
  %158 = sdiv i32 %157, 3
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = or i32 %162, %156
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* %160, align 1
  br label %165

165:                                              ; preds = %124, %145, %127
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %9, align 4
  br label %107

169:                                              ; preds = %122
  %170 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %171 = load i8, i8* %12, align 1
  %172 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %173 = load i32, i32* %9, align 4
  %174 = sdiv i32 %173, 3
  %175 = call i32 @set_wep_key(%struct.airo_info* %170, i8 signext %171, i8* %172, i32 %174, i32 1, i32 1)
  store i32 %175, i32* %10, align 4
  %176 = load i32, i32* %10, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %188

178:                                              ; preds = %169
  %179 = load %struct.airo_info*, %struct.airo_info** %8, align 8
  %180 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %179, i32 0, i32 0
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i8, i8* %12, align 1
  %185 = sext i8 %184 to i32
  %186 = load i32, i32* %10, align 4
  %187 = call i32 (i32, i8*, ...) @airo_print_err(i32 %183, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %32, %97, %99, %178, %169
  ret void
}

declare dso_local %struct.proc_dir_entry* @PDE(%struct.inode*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @set_wep_tx_idx(%struct.airo_info*, i8 signext, i32, i32) #1

declare dso_local i32 @airo_print_err(i32, i8*, ...) #1

declare dso_local signext i8 @hexVal(i8 signext) #1

declare dso_local i32 @set_wep_key(%struct.airo_info*, i8 signext, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
